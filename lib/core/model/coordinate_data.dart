import 'package:freezed_annotation/freezed_annotation.dart';
part 'coordinate_data.freezed.dart';

@freezed
abstract class CoordinateData with _$CoordinateData {
  const factory CoordinateData({required final int index, required final DateTime time, required final int polyIndex}) = _CoordinateData;
}
