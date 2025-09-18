import 'dart:developer';
import 'package:flutter/foundation.dart';

// @immutable
// class AppFailure {
//   final String message;
//   final String? functionError;
//   final String? payload;
//   const AppFailure([this.message = 'Sorry, an unexpected error occurred!', this.functionError, this.payload]);

//   @override
//   String toString() => 'AppFailure(message: $message)';
// }

@immutable
class ErrorDetails {
  ErrorDetails({
    required this.stackTrace,
    this.statusCode = 400,
    this.apiStatusCode,
    this.message = 'Sorry, an unexpected error occurred!',
    this.payload,
    this.error,
    this.route,
    this.fullResponse,
  }) {
    // authanticationChecker(message);
    log("$message\n Payload: ${payload ?? "Get Request Error"}", error: error, name: route ?? '', stackTrace: StackTrace.current, level: 1000);
  }
  final String message;
  final String? payload;
  final int statusCode;
  final StackTrace stackTrace;
  final Object? error;
  final String? route;
  final String? fullResponse;
  final int? apiStatusCode;

  @override
  String toString() => message;
  // @override
  // String toString() => "message: $message, payload: $payload, statusCode: $statusCode, stackTrace: $stackTrace, error: $error, route: $route";
  void print() => log(error.toString(), error: message, name: route ?? '', stackTrace: StackTrace.current);
}
