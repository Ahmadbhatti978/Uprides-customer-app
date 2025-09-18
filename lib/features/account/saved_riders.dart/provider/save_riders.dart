import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/failure/failure.dart';
import '../../../../util/api/api_routes.dart';
import '../../../../util/api/call.dart';
import '../model/riders.dart';
import '../model/someone.dart';

part 'save_riders.g.dart';

@Riverpod(keepAlive: true)
class SavedRiders extends _$SavedRiders {
  @override
  FutureOr<Someone> build() => _fetchSavedRiders();

  Future<Someone> _fetchSavedRiders() async {
    state = const AsyncLoading<Someone>();

    final Either<ErrorDetails, Someone> result = await Request.get(
      path: Api.savedRiders,
      onSuccess: (final json) {
        final Someone dat = someoneFromJson(json);
        //    dat.riders?.insert(0, Rider(id: guser!.id!, phone: guser!.phone, fullName: "For myself"));
        // ref.read(ridersProvider.notifier).update((cb) {
        //   final iDS = cb.map((d) => d.id);
        //   return dat.riders!.where((ri) => !iDS.contains(ri.id)).toList();
        // });
        return dat;
      },
    );

    return result.fold((final ErrorDetails error) {
      state = AsyncError(error, StackTrace.current);
      return Future.error(error);
    }, (final Someone data) => data);
  }

  Future<void> refreshRiders() async {
    state = const AsyncLoading();
    state = AsyncData(await _fetchSavedRiders());
  }

  Future<bool> saveRiders({final String? fullName, final String? phone}) {
    state = const AsyncLoading();
    final Map<String, String?> payload = <String, String?>{'full_name': fullName, 'phone': phone};
    return Request.post(
      path: Api.savedRiders,
      payload: payload,
      onSuccess: (final json) {
        refreshRiders();
        return true;
      },
    ).then((value) => value.fold(Future.error, Future.value));
  }

  Future<void> deleteSavedLocation(final String riderId) async {
    final AsyncValue<Someone> previousState = state;

    try {
      if (state.hasValue && state.value != null) {
        final Someone someone = state.value!;

        final Someone updatedLocations = Someone(riders: someone.riders?.where((final Rider loc) => loc.id != riderId).toList());

        state = AsyncData(updatedLocations);
      }

      final Either<ErrorDetails, bool> result = await Request.delete(
        path: '${Api.savedRiders}$riderId',
        payload: <String, String>{},
        onSuccess: (final json) => true,
      );

      result.fold((final ErrorDetails error) {
        state = previousState;
      }, (_) {});
    } catch (e) {
      state = previousState;
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }

  Future<void> updateSavedLocation(final String riderId, {final String? fullName, final String? phone}) async {
    final AsyncValue<Someone> previousState = state;

    try {
      if (state.hasValue && state.value != null) {
        final Someone riders = state.value!;

        final Someone updatedLocations = Someone(
          riders: riders.riders?.map((final Rider loc) {
            if (loc.id == riderId) {
              return Rider(id: loc.id, fullName: fullName ?? loc.fullName, phone: phone ?? loc.phone);
            }
            return loc;
          }).toList(),
        );

        state = AsyncData(updatedLocations);
      }

      final Map<String, String> payload = <String, String>{
        'customer_id': riderId,
        if (fullName != null) 'full_name': fullName,
        if (phone != null) 'phone': phone,
      };

      final Either<ErrorDetails, bool> result = await Request.put(path: Api.savedRiders, payload: payload, onSuccess: (final json) => true);

      await result.fold(
        (final ErrorDetails error) {
          state = previousState;
        },
        (_) async {
          state = AsyncData(await _fetchSavedRiders());
        },
      );
    } catch (e) {
      state = previousState;
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }
}
