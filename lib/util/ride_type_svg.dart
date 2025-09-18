import 'package:flutter_svg/flutter_svg.dart';

import '../core/widgets/loading_error/loading.dart';
import '../features/booking/addlocation/import.dart';
import '../features/booking/model/ride_type_images.dart';
import '../features/booking/provider/get_type.dart';

class RideTypeSvg extends ConsumerWidget {
  const RideTypeSvg(this.id, {super.key});
  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      id == null
          ? const SizedBox.shrink()
          : ref
              .watch(getRideTypeImagesProvider)
              .when(
                data: (data) {
                  final String? url =
                      data.data?.rideTypes?.results
                          ?.firstWhere((final RideType dat) => dat.id == id, orElse: () => data.data!.rideTypes!.results!.first)
                          .rideImage;

                  return url != null ? SvgPicture.network(url) : const SizedBox.shrink();
                },
                error: (error, stackTrace) => const SizedBox.shrink(),
                loading: () => loading,
              );
}
