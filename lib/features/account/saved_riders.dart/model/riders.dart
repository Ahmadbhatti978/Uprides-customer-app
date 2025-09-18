import 'package:freezed_annotation/freezed_annotation.dart';

part 'riders.freezed.dart';
part 'riders.g.dart';

@freezed
abstract class Rider with _$Rider {
  const factory Rider({
    @JsonKey(name: 'customer_id') final String? customerId,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'full_name') final String? fullName,
    @JsonKey(name: 'is_deleted') final bool? isDeleted,
    @JsonKey(name: 'id') final String? id,
  }) = _Rider;

  factory Rider.fromJson(final Map<String, dynamic> json) => _$RiderFromJson(json);
}
