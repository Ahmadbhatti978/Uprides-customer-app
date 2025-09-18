import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/widgets/loading_error/loading.dart';
import 'provider/intercity_book.dart';
import 'reservation_detail.dart';


class BookIntercity extends ConsumerWidget {
 
  const BookIntercity({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
     final String rideID = ModalRoute.of(context)!.settings.arguments! as String;
    return ref.watch(GetIntercityRideBookProvider(rideID)).when(
        data: (final String data) => const ReservationDetail(),
        error: (final Object error, final StackTrace stackTrace) {
          Navigator.pop(context);
          return const SizedBox();
        },
        loading: () => const Loading(
              text: 'Booking your ride',
            ),);
 
  }
}
