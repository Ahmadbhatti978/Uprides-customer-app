import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/failure/failure.dart';
import '../../../core/model/coordinate.dart';
import '../model/trending_place.dart';
import '../repo/google_place_repo.dart';

part 'location_nearby.g.dart';

Map<Coordinate, List<TrendingPlace>> cache = <Coordinate, List<TrendingPlace>>{};
@Riverpod(keepAlive: true)
Future<List<TrendingPlace>> trendingLocation(
  final Ref ref, {
  required final Coordinate location,
}) async {
  if (cache[location] != null) {
    return cache[location]!;
  } else {
    final Either<ErrorDetails, List<TrendingPlace>> getTrendingPlaces =
        await GooglePlaceRepo.fetchTrendingPlaces(
            location.latitude!, location.longitude!, null,);
    return getTrendingPlaces.fold((final ErrorDetails appFailure) {
      log(appFailure.message);
      return <TrendingPlace>[];
    }, (final List<TrendingPlace> trendingPlaces) => cache[location] = trendingPlaces.sublist(1),);
  }
}
