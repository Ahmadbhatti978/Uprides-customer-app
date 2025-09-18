import 'package:freezed_annotation/freezed_annotation.dart';
part 'status.freezed.dart';
part 'status.g.dart';

@freezed
abstract class Status with _$Status {
  const factory Status({
    @JsonKey(name: 'success') final bool? success,
    @JsonKey(name: 'message') final String? message,
    @JsonKey(name: 'data') final Data? data,
    @JsonKey(name: 'statusCode') final int? statusCode,
  }) = _Status;

  factory Status.fromJson(final Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'retry') final bool? retry,
    @JsonKey(name: 'current_retry') final int? currentRetry,
    @JsonKey(name: 'max_retries') final int? maxRetries,
    @JsonKey(name: 'waiting_time') final int? waitingTime,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}
