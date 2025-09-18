import 'package:freezed_annotation/freezed_annotation.dart';
import 'riders.dart';
part 'someone.freezed.dart';
part 'someone.g.dart';

Someone someoneFromJson(Map<String, dynamic> json) {
  final dynamic ridersData = json['data']?['riders'] ?? <String, dynamic>{};
  final Map<String, dynamic> modifiedJson = <String, dynamic>{
    ...json,
    'riders': ridersData['results'] ?? <dynamic>[],
    'page': ridersData['page'],
    'limit': ridersData['limit'],
    'totalPages': ridersData['totalPages'],
    'totalResults': ridersData['totalResults'],
    'isNextPage': ridersData['isNextPage'],
    'isPreviousPage': ridersData['isPreviousPage'],
  };

  return Someone.fromJson(modifiedJson);
}

@freezed
abstract class Someone with _$Someone {
  const factory Someone({
    bool? success,
    String? message,
    List<Rider>? riders,
    int? statusCode,
    String? originalError,
    int? page,
    int? limit,
    int? totalPages,
    int? totalResults,
    bool? isNextPage,
    bool? isPreviousPage,
  }) = _Someone;
  factory Someone.fromJson(Map<String, dynamic> json) => _$SomeoneFromJson(json);

  // factory Someone.fromJson(Map<String, dynamic> json) {
  //     ridersData = json['data']?['riders'] ?? {};
  //     modifiedJson = {
  //     ...json,
  //     'riders': ridersData['results'] ?? [],
  //     'page': ridersData['page'],
  //     'limit': ridersData['limit'],
  //     'totalPages': ridersData['totalPages'],
  //     'totalResults': ridersData['totalResults'],
  //     'isNextPage': ridersData['isNextPage'],
  //     'isPreviousPage': ridersData['isPreviousPage'],
  //   };
  //   return _$SomeoneFromJson(modifiedJson);
  // }
}
