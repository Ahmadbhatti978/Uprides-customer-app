// To parse this JSON data, do
//
//     final jump = jumpFromJson(jsonString);

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'jump.freezed.dart';
part 'jump.g.dart';

Jump jumpFromJson(final String str) => Jump.fromJson(json.decode(str));
String jumpToJson(final Jump data) => json.encode(data.toJson());

@freezed
abstract class Jump with _$Jump {
  const factory Jump({
    final String? vehicalName,
    final String? vehicalNumber,
    // String? phoneNumber
  }) = _Jump;

  factory Jump.fromJson(final Map<String, dynamic> json) => _$JumpFromJson(json);
}
