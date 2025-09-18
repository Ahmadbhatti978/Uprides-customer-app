// ignore_for_file: specify_nonobvious_local_variable_types
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart';
import '../../core/failure/failure.dart';
import '../../core/helper_fun.dart';
import 'api_helper.dart';

// ignore: avoid_classes_with_only_static_members
class Request {
  static ClientService clientService = ClientService();

  /// Performs a GET request.
  static Future<Either<ErrorDetails, T>> get<T>({
    required String path,
    required T Function(dynamic data) onSuccess,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    bool jsonAsString = false,
    bool retry = true,
    bool log = true,
  }) async {
    try {
      return await clientService.get(path: path, queryParameters: queryParameters, headers: headers).then((res) async {
        final body = jsonAsString ? res.body : jsonDecode(res.body);

        if (res.statusCode.isSuccessful) {
          if (log) _logSuccess(method: 'GET', path: path, payload: queryParameters, response: body);
          return Right(onSuccess(body));
        }
        _logError(method: 'GET', path: path, error: res.body, payload: queryParameters);
        if (retry) {
          final bool refresh = await checkForRetry(res.statusCode);
          if (refresh) {
            // Retry logic can be implemented here if needed
            return get<T>(path: path, onSuccess: onSuccess, headers: headers, queryParameters: queryParameters, jsonAsString: jsonAsString, retry: false);
          }
        }
        return Left(_buildError(path, res.statusCode, res.body, queryParameters ?? {}));
      }, onError: (e, s) => Left(_buildError(path, 999, s.toString(), queryParameters ?? {}, error: e)));
    } on Exception catch (e, st) {
      _logException('GET', path, e, st);
      return Left(_buildException(path, e, st, queryParameters));
    }
  }

  /// Performs a POST request.
  static Future<Either<ErrorDetails, T>> post<T>({
    required String path,
    required Map<String, dynamic> payload,
    required T Function(dynamic data) onSuccess,
    Map<String, String>? headers,
    bool jsonAsString = false,
    bool retry = true,
    bool log = true,
  }) async {
    try {
      final Response res = await clientService.post(path: path, body: payload, headers: headers).timeout(const Duration(seconds: 30), // Add timeout
          onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)));
      final body = jsonDecode(res.body);

      if (res.statusCode.isSuccessful && (body?["success"] ?? true)) {
        if (log) _logSuccess(method: 'POST', path: path, payload: payload, response: body);
        return Right(onSuccess(jsonAsString ? res.body : body));
      }
      _logError(method: 'POST', path: path, error: res.body, payload: payload);

      if (retry) {
        final bool refresh = await checkForRetry(res.statusCode);
        if (refresh) {
          return post<T>(path: path, payload: payload, onSuccess: onSuccess, headers: headers, jsonAsString: jsonAsString, retry: false);
        }
      }
      return Left(_buildError(path, res.statusCode, res.body, payload));
    } on Exception catch (e, st) {
      _logException('POST', path, e, st, payload);
      return Left(_buildException(path, e, st, payload));
    }
  }

  /// Performs a PUT request.
  static Future<Either<ErrorDetails, T>> put<T>({
    required String path,
    required Map<String, dynamic> payload,
    required T Function(dynamic data) onSuccess,
    Map<String, String>? headers,
    bool jsonAsString = false,
    bool retry = true,
  }) async {
    try {
      final Response res = await clientService.put(path: path, body: payload, headers: headers).timeout(
          const Duration(seconds: 30), // Add timeout
          onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30))
        );
      final body = jsonAsString ? res.body : jsonDecode(res.body);

      if (res.statusCode.isSuccessful) {
        _logSuccess(method: 'PUT', path: path, payload: payload, response: body);
        return Right(onSuccess(body));
      }
      _logError(method: 'PUT', path: path, error: res.body, payload: payload);
      if (retry) {
        final bool refresh = await checkForRetry(res.statusCode);
        if (refresh) {
          // Retry logic can be implemented here if needed
          return put<T>(path: path, payload: payload, onSuccess: onSuccess, headers: headers, jsonAsString: jsonAsString, retry: false);
        }
      }
      return Left(_buildError(path, res.statusCode, res.body, payload));
    } on Exception catch (e, st) {
      _logException('PUT', path, e, st, payload);
      return Left(_buildException(path, e, st, payload));
    }
  }

  /// Performs a PATCH request.
  static Future<Either<ErrorDetails, T>> patch<T>({
    required String path,
    required Map<String, dynamic> payload,
    required T Function(dynamic data) onSuccess,
    Map<String, String>? headers,
    bool jsonAsString = false,
    bool retry = true,
  }) async {
    try {
      final Response res = await clientService.patch(path: path, body: payload, headers: headers);
      final body = jsonAsString ? res.body : jsonDecode(res.body);

      if (res.statusCode.isSuccessful) {
        _logSuccess(method: 'PATCH', path: path, payload: payload, response: body);
        return Right(onSuccess(body));
      }
      _logError(method: 'PATCH', path: path, error: res.body, payload: payload);

      if (retry) {
        final bool refresh = await checkForRetry(res.statusCode);
        if (refresh) {
          // Retry logic can be implemented here if needed
          return patch<T>(path: path, payload: payload, onSuccess: onSuccess, headers: headers, jsonAsString: jsonAsString, retry: false);
        }
      }
      return Left(_buildError(path, res.statusCode, res.body, payload));
    } on Exception catch (e, st) {
      _logException('PATCH', path, e, st, payload);
      return Left(_buildException(path, e, st, payload));
    }
  }

  /// Performs a DELETE request.
  static Future<Either<ErrorDetails, T>> delete<T>({
    required String path,
    required Map<String, dynamic> payload,
    required T Function(dynamic data) onSuccess,
    Map<String, String>? headers,
    bool retry = true,
  }) async {
    try {
      final Response res = await clientService.delete(path: path, body: payload, headers: headers);
      final body = jsonDecode(res.body);

      if (res.statusCode.isSuccessful) {
        return Right(onSuccess(body));
      }
      final bool refresh = await checkForRetry(res.statusCode);
      if (refresh && retry) {
        // Retry logic can be implemented here if needed
        return delete<T>(path: path, payload: payload, onSuccess: onSuccess, headers: headers, retry: false);
      }
      return Left(_buildError(path, res.statusCode, res.body, payload));
    } on Exception catch (e, st) {
      _logException('DELETE', path, e, st, payload);
      return Left(_buildException(path, e, st, payload));
    }
  }

  /// Performs an upload request.
  static Future<Either<ErrorDetails, T>> upload<T>({
    required String path,
    required Map<String, String> payload,
    required T Function(dynamic data) onSuccess,
    File? file,
    String? fileField,
    String method = 'POST',
    String? mediaType,
    bool retry = true,
  }) async {
    try {
      final Response res = await clientService.upload(
        path: path,
        file: file,
        fields: payload,
        mediaType: mediaType ?? 'image',
        method: method,
        fileField: fileField ?? 'file',
      );
      final body = jsonDecode(res.body);
      _logSuccess(method: 'UPLOAD', path: path, payload: payload, response: body);
      if (fileField != null) {
        final load = payload;
        load[fileField] = file?.path ?? "";
      }

      if (res.statusCode.isSuccessful) {
        return Right(onSuccess(body));
      }

      final bool refresh = await checkForRetry(res.statusCode);
      if (refresh && retry) {
        // Retry logic can be implemented here if needed
        return upload<T>(
          path: path,
          payload: payload,
          onSuccess: onSuccess,
          file: file,
          fileField: fileField,
          method: method,
          mediaType: mediaType,
          retry: false,
        );
      }
      return Left(_buildError(path, res.statusCode, res.body, payload));
    } on Exception catch (e, st) {
      _logException('UPLOAD', path, e, st, payload);
      return Left(_buildException(path, e, st, payload));
    }
  }

  // Helper Logging
  static void _logSuccess({required String method, required String path, dynamic payload, dynamic response}) {
    log({"payload": jsonEncode(payload), "response": jsonEncode(response)}.toString(), name: '✅ [$method] $path');
  }

  static void _logError({required String method, required String path, required Object error, Map<String, dynamic>? payload}) {
    log({"payload": jsonEncode(payload), "response": jsonEncode(error)}.toString(), name: '❌ [$method] $path');
  }

  static void _logException(String method, String path, Object exception, StackTrace st, [Object? payload]) {
    log('⚠️ [$method] $path exception: $exception', error: exception, stackTrace: st);
  }

  // Helper to build standard ErrorDetails
  static ErrorDetails _buildError(String route, int statusCode, String responseBody, Object payload, {dynamic error}) {
    final Map<String, dynamic> map = (jsonDecode(responseBody) as Map<String, dynamic>?) ?? {};
    return ErrorDetails(
      message: map['message'] as String? ?? 'Unknown error',
      apiStatusCode: map['statusCode'] as int? ?? statusCode,
      payload: payload.toString(),
      route: route,
      error: error ?? responseBody,
      stackTrace: StackTrace.current,
    );
  }

  static ErrorDetails _buildException(String route, Object err, StackTrace st, [Object? payload]) =>
      ErrorDetails(error: err, stackTrace: st, payload: payload?.toString() ?? '', route: route);
}

extension on int {
  bool get isSuccessful => this >= 200 && this < 300;
}
/// High-level API wrapper returning domain-specific results.