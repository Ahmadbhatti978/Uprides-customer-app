import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import '../variable.dart';

/// Custom exception for network-related errors
class NetworkException implements Exception {
  NetworkException(this.message, [this.errorCode]);
  final String message;
  final int? errorCode;

  @override
  String toString() => 'NetworkException: $message${errorCode != null ? ' (Error: $errorCode)' : ''}';
}

/// Low-level HTTP client with common headers, query builder, and multipart support.
class ClientService {
  ClientService({Client? client, this.token = ''}) : client = client ?? Client();

  final Client client;
  String token;

  /// Default JSON headers with bearer token.
  Map<String, String> get defaultHeaders => {
    'Authorization': 'Bearer $token',
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    "lng": slocal?.languageCode ?? "en",
  };

  /// Build URL-encoded query string.
  String _encodeQuery(Map<String, dynamic>? params) {
    if (params == null || params.isEmpty) return '';
    final parts = <String>[];
    params.forEach((key, value) {
      if (value == null) return;
      if (value is Iterable) {
        // ignore: specify_nonobvious_local_variable_types
        for (final dynamic v in value) {
          parts.add('${Uri.encodeQueryComponent(key)}=${Uri.encodeQueryComponent(v.toString())}');
        }
      } else {
        parts.add('${Uri.encodeQueryComponent(key)}=${Uri.encodeQueryComponent(value.toString())}');
      }
    });
    return parts.join('&');
  }

  /// Execute HTTP request with comprehensive error handling
  Future<Response> _executeRequest(Future<Response> Function() requestFunction) async {
    try {
      return await requestFunction();
    } on SocketException catch (e) {
      log('SocketException: $e', name: "❌ NETWORK ERROR");
      throw NetworkException('No internet connection or server unreachable. Please check your network.', e.osError?.errorCode);
    } on HandshakeException catch (e) {
      log('HandshakeException: $e', name: "❌ SSL ERROR");
      throw NetworkException('SSL/TLS handshake failed. Please check the server certificate.');
    } on FormatException catch (e) {
      log('FormatException: $e', name: "❌ URL ERROR");
      throw NetworkException('Invalid URL format. Please check the endpoint.');
    } on TimeoutException catch (e) {
      log('TimeoutException: $e', name: "❌ TIMEOUT ERROR");
      throw NetworkException('Request timeout. Server is not responding.');
    } on HttpException catch (e) {
      log('HttpException: $e', name: "❌ HTTP ERROR");
      throw NetworkException('HTTP error occurred: ${e.message}');
    } catch (e) {
      log('Unknown error: $e', name: "❌ UNKNOWN ERROR");
      throw NetworkException('An unexpected error occurred: $e');
    }
  }

  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Duration timeout = const Duration(seconds: 30),
  }) => _executeRequest(() async {
    final String query = _encodeQuery(queryParameters);
    final Uri uri = Uri.parse(path + (query.isNotEmpty ? '?$query' : ''));
    log(uri.toString(), name: "➡️ GET");

    final Response response = await client.get(uri, headers: headers ?? defaultHeaders).timeout(timeout);
  //  log(defaultHeaders.toString(), name: "⬅️ GET ${path.split("/").last}");
    return response;
  });

  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeJson = true,
    Duration timeout = const Duration(seconds: 30),
  }) => _executeRequest(() async {
    //  log(defaultHeaders.toString(),name: "header");
    final Uri uri = Uri.parse(path);
    final Object? payload = encodeJson ? jsonEncode(body ?? {}) : body;
    log(uri.toString(), name: "➡️ POST");

    final Response response = await client.post(uri, headers: headers ?? defaultHeaders, body: payload).timeout(timeout);
   // log(defaultHeaders.toString(), name: "⬅️ POST ${path.split("/").last}");
    return response;
  });

  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeJson = true,
    Duration timeout = const Duration(seconds: 30),
  }) => _executeRequest(() async {
    final Uri uri = Uri.parse(path);
    final Object? payload = encodeJson ? jsonEncode(body ?? {}) : body;
    log(uri.toString(), name: "➡️ PUT");

    final Response response = await client.put(uri, headers: headers ?? defaultHeaders, body: payload).timeout(timeout);
    log('Response status: ${response.statusCode}', name: "⬅️ PUT ${path.split("/").last}");
    return response;
  });

  Future<Response> patch({
    required String path,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeJson = true,
    Duration timeout = const Duration(seconds: 30),
  }) => _executeRequest(() async {
    final Uri uri = Uri.parse(path);
    final Object? payload = encodeJson ? jsonEncode(body ?? {}) : body;
    log(uri.toString(), name: "➡️ PATCH");

    final Response response = await client.patch(uri, headers: headers ?? defaultHeaders, body: payload).timeout(timeout);
   // log('Response status: ${response.statusCode}', name: "⬅️ PATCH ${path.split("/").last}");
    return response;
  });

  Future<Response> delete({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Duration timeout = const Duration(seconds: 30),
  }) => _executeRequest(() async {
    final String query = _encodeQuery(queryParameters);
    final Uri uri = Uri.parse(path + (query.isNotEmpty ? '?$query' : ''));
    final String payload = jsonEncode(body ?? {});
    log(uri.toString(), name: "➡️ DELETE");

    final Response response = await client.delete(uri, headers: headers ?? defaultHeaders, body: payload).timeout(timeout);
  //  log('Response status: ${response.statusCode}', name: "⬅️ DELETE ${path.split("/").last}");
    return response;
  });

  /// Multipart upload with optional file.
  Future<Response> upload({
    required String path,
    required String method,
    Map<String, String>? fields,
    File? file,
    String fileField = 'file',
    String mediaType = 'application/octet-stream',
    Duration timeout = const Duration(seconds: 60), // Longer timeout for uploads
  }) => _executeRequest(() async {
    final Uri uri = Uri.parse(path);

    final request =
        MultipartRequest(method, uri)
          ..headers.addAll(defaultHeaders)
          ..fields.addAll(fields ?? {});

    if (file != null) {
      // Determine the correct image MIME type
      String? contentType;
      if (file.path.toLowerCase().endsWith('.jpg') || file.path.toLowerCase().endsWith('.jpeg')) {
        contentType = 'image/jpeg';
      } else if (file.path.toLowerCase().endsWith('.png')) {
        contentType = 'image/png';
      }
      // Fallback or use the provided mediaType if it's explicitly set for other types
      contentType ??= mediaType;

      request.files.add(
        MultipartFile(fileField, file.openRead(), file.lengthSync(), filename: file.path.split('/').last, contentType: MediaType.parse(contentType)),
      );
    }
    log(uri.toString() + fileField + file.toString(), name: "➡️ UPLOAD{$method}");

    final StreamedResponse streamed = await request.send().timeout(timeout);
    final Response response = await Response.fromStream(streamed);
    log('Response status: ${response.statusCode}', name: "⬅️ UPLOAD ${path.split("/").last}");
    log(response.body);
    return response;
  });
}

/// Extension to add timeout to Future
extension TimeoutExtension on Future<Response> {
  Future<Response> timeout(Duration duration) => this.timeout(
    duration,
    onTimeout: () {
      throw TimeoutException(null, duration);
    },
  );
}
