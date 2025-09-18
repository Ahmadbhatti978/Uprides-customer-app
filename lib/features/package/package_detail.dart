import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/border.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'component/send.dart';
import 'model/package.dart';
import 'provider/package_provider.dart';

final StateProvider<List<PackagesDetail>> packageDetailProvider = StateProvider<List<PackagesDetail>>((final Ref<List<PackagesDetail>> ref) {
  final List<MapEntry<Place, ReceiverDetails?>> places = ref.read(locationProvider);
  return List.generate(places.length - 1, (final int i) => PackagesDetail(type: i));
});
final AutoDisposeStateProvider<int> activeIndex = AutoDisposeStateProvider<int>((final Ref<int> ref) => 0);

class PackageDetail extends ConsumerWidget {
  const PackageDetail({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final List<MapEntry<Place, ReceiverDetails?>> places = List.of(ref.read(locationProvider))..removeAt(0);
    final List<PackagesDetail> packages = ref.watch(packageDetailProvider);
    final int index = ref.watch(activeIndex);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const NameBackBar(title: 'Package details'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: padding),
        children: <Widget>[
          SizedBox(
            height: mediaQuery.size.width + 28,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                PageView.builder(
                  controller: PageController(initialPage: index, viewportFraction: 0.9),
                  onPageChanged: (final int value) => ref.read(activeIndex.notifier).state = value,
                  itemCount: packages.length,
                  itemBuilder: (final BuildContext context, final int index) => PackageCard(index, packages.elementAt(index), places),
                ),
                Positioned(
                  bottom: padding,
                  child: AnimatedSmoothIndicator(
                    activeIndex: index,
                    count: packages.length,
                    effect: const WormEffect(spacing: 5, dotWidth: 42, dotHeight: 6, dotColor: Color(0xFFEEEEEE), activeDotColor: Color(0xFF18C4B8)),
                  ),
                ),
              ],
            ),
          ),
          Card.filled(
            color: grey,
            margin: const EdgeInsets.symmetric(horizontal: padding, vertical: padding),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(padding, 12, padding, 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(l10n.uploaded_image, style: Default.heading),
                  const Gap(4),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: packages.elementAt(index).media?.length ?? 0,
                      itemBuilder:
                          (final BuildContext context, final int i) => Stack(
                            alignment: FractionalOffset.topRight,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8, right: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(imageUrl: packages.elementAt(index).media!.elementAt(i)),
                                ),
                              ),
                              Container(
                                width: 22,
                                height: 22,
                                alignment: Alignment.center,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(side: BorderSide(width: 2, color: Color(0xFFEEEEEE))),
                                  shadows: <BoxShadow>[BoxShadow(color: Color(0x1E000000), blurRadius: 33, offset: Offset(4, 4))],
                                ),
                                child: InkWell(onTap: () {}, child: const Icon(Icons.close_rounded, opticalSize: 14, size: 14)),
                              ),
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context, ref, packages, places),
    );
  }

  // Widget _buildTotalChargeCard(List<PackagesDetail> packages) {
  //   return Card.outlined(
  //     margin: const EdgeInsets.symmetric(horizontal: horizontalpadding, vertical: horizontalpadding * 2),
  //     shape: const RoundedRectangleBorder(
  //       side: BorderSide(width: 1.6, color: Color(0xFFEEEEEE)),
  //       borderRadius: BorderRadius.all(Radius.circular(8)),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.all(horizontalpadding),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           const Text('Total charge', style: Primary.title),
  //           const Gap(14),
  //           ...List.generate(
  //             packages.length,
  //             (i) => Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text('Package ${i + 1}', style: Secondary.title),
  //                 const Text('\$33', style: Secondary.title),
  //               ],
  //             ),
  //           ),
  //           const Gap(padding),
  //           const Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [Text('Total', style: Bold.headingSmall), Text('\$33', style: Bold.headingSmall)],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildBottomNavigationBar(
    final BuildContext context,
    final WidgetRef ref,
    final List<PackagesDetail> packages,
    final List<MapEntry<Place, ReceiverDetails?>> places,
  ) => Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      BlackButton(
        text: l10n.ontinue,
        onPressed: () {
          ref
              .read(packageProvider.notifier)
              .update(
                (final Package pack) => pack.copyWith(
                  packages:
                      packages.map((final PackagesDetail package) {
                        final MapEntry<Place, ReceiverDetails?> place = places.elementAt(package.type ?? 0);
                        return PackageElement(
                          receiverDetails: place.value,
                          deliveryLocation: place.key.location,
                          dimensions: package.dimensions,
                          media: package.media ?? <String>[],
                          packageType: 'other',
                          description: package.description,
                        );
                      }).toList(),
                ),
              );

          Navigator.pushNamed(context, AppRoutes.overveiw);
        },
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: padding),
        child: TextButton(
          onPressed: () => ref.read(packageDetailProvider.notifier).state = <PackagesDetail>[...packages, const PackagesDetail(type: 0)],
          child: Text(l10n.add_package, textAlign: TextAlign.center, style: Bold.titleBig),
        ),
      ),
    ],
  );
}

class PackageCarousal extends ConsumerWidget {
  const PackageCarousal({required this.packages, required this.places, required this.index, super.key});
  final List<PackagesDetail> packages;
  final List<MapEntry<Place, ReceiverDetails?>> places;
  final int index;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => SizedBox(
    height: mediaQuery.size.width,
    child: PageView.builder(
      controller: PageController(initialPage: index, viewportFraction: 0.9),
      onPageChanged: (final int value) => ref.read(activeIndex.notifier).state = value,
      itemCount: packages.length,
      itemBuilder: (final BuildContext context, final int index) => PackageCard(index, packages.elementAt(index), places),
    ),
  );
}

class PackageCard extends ConsumerWidget {
  const PackageCard(this.index, this.packages, this.places, {super.key});
  final int index;
  final PackagesDetail packages;
  final List<MapEntry<Place, ReceiverDetails?>> places;
  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Card.outlined(
    shadowColor: const Color.fromARGB(44, 25, 25, 25),
    elevation: 10,
    margin: const EdgeInsets.fromLTRB(padding * .3, 0, padding * .7, padding + 28),
    shape: const RoundedRectangleBorder(side: BorderSide(color: Color(0xFFEEEEEE), width: 1.6), borderRadius: BorderRadius.all(Radius.circular(8))),
    child: Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        children: <Widget>[
          _buildHeaderRow(ref, index),
          const Gap(padding),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Container(
                    padding: const EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFFEEEEEE), width: 2)),
                    alignment: Alignment.center,
                    child: Builder(
                      builder:
                          (final BuildContext context) => Row(
                            children: <Widget>[
                              SizedBox(width: 18, child: SvgPicture.asset(dimension)),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 13),
                                child: SizedBox(
                                  width: 24,
                                  child: TextFormField(
                                    initialValue: packages.dimensions?.length?.toString(),
                                    key: ValueKey('${index}L'),
                                    maxLength: 2,
                                    groupId: '${index}L',
                                    keyboardType: TextInputType.number,
                                    style: Primary.bodyLarge,
                                    textAlign: TextAlign.end,
                                    onChanged:
                                        (final String value) => ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> stat) {
                                          final List<PackagesDetail> state = <PackagesDetail>[...stat];
                                          final PackagesDetail package = state.elementAt(index);
                                          state[index] = package.copyWith(
                                            dimensions: (package.dimensions ?? const Dimensions()).copyWith(length: int.tryParse(value)),
                                          );
                                          return state;
                                        }),
                                    decoration: const InputDecoration(
                                      hintStyle: Secondary.body,
                                      hintText: 'L',
                                      counterText: '',
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.6),
                                child: Text('X', textAlign: TextAlign.end, style: Primary.bodySmall),
                              ),
                              SizedBox(
                                width: 22,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 13),
                                  child: TextFormField(
                                    initialValue: packages.dimensions?.width?.toString(),
                                    maxLength: 2,
                                    key: ValueKey('${index}W'),
                                    groupId: '${index}W',
                                    textAlignVertical: TextAlignVertical.bottom,
                                    keyboardType: TextInputType.number,
                                    style: Primary.bodyLarge,
                                    onChanged: (final String value) {
                                      ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> stat) {
                                        final List<PackagesDetail> state = <PackagesDetail>[...stat];
                                        final PackagesDetail package = state.elementAt(index);
                                        state[index] = package.copyWith(
                                          dimensions: (package.dimensions ?? const Dimensions()).copyWith(width: int.tryParse(value)),
                                        );
                                        return state;
                                      });
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: const InputDecoration(
                                      hintStyle: Secondary.body,
                                      counterText: '',
                                      hintText: 'W',
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(right: 2), child: Text('X', textDirection: TextDirection.ltr, style: Primary.bodySmall)),
                              SizedBox(
                                width: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 13),
                                  child: TextFormField(
                                    initialValue: packages.dimensions?.height?.toString(),
                                    maxLength: 2,
                                    groupId: '${index}H',
                                    key: ValueKey('${index}H'),
                                    onChanged:
                                        (final String value) => ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> stat) {
                                          final List<PackagesDetail> state = <PackagesDetail>[...stat];
                                          final PackagesDetail package = state.elementAt(index);
                                          state[index] = package.copyWith(
                                            dimensions: (package.dimensions ?? const Dimensions()).copyWith(height: int.tryParse(value)),
                                          );
                                          return state;
                                        }),
                                    textAlignVertical: TextAlignVertical.top,
                                    keyboardType: TextInputType.number,
                                    style: Primary.bodyLarge,
                                    decoration: const InputDecoration(
                                      hintStyle: Secondary.body,
                                      counterText: '',
                                      hintText: 'H',
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Text(l10n.inch, style: Secondary.body),
                            ],
                          ),
                    ),
                  ),
                ),
                const Gap(spacing),
                Expanded(
                  flex: 9,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: padding / 2, vertical: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFFEEEEEE), width: 2)),
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset(weight, height: 32),
                        const Gap(8),
                        SizedBox(
                          width: 68,
                          child: TextFormField(
                            initialValue: packages.dimensions?.weight?.toString(),
                            maxLength: 5,
                            keyboardType: TextInputType.number,
                            onChanged:
                                (final String value) => ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> stat) {
                                  final List<PackagesDetail> state = <PackagesDetail>[...stat];
                                  final PackagesDetail package = state.elementAt(index);
                                  state[index] = package.copyWith(dimensions: (package.dimensions ?? const Dimensions()).copyWith(weight: int.parse(value)));
                                  return state;
                                }),
                            decoration: const InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.symmetric(vertical: 8),
                              hintText: 'Weight',
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(padding),
          Expanded(child: _buildDropdown(index, packages, places, ref, context)),
          const Gap(padding),
          Expanded(child: _buildTextField('Estimated value in EUR', '', ref, index, const Icon(Icons.euro, color: darkgrey), TextInputType.number)),
          const Gap(padding),
          Expanded(child: _buildTextField('Short description...', packages.description, ref, index)),
          const Gap(padding),
          Expanded(child: _buildAddPhotoButton(ref, index)),
        ],
      ),
    ),
  );

  Widget _buildHeaderRow(final WidgetRef ref, final int index) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('Package ${index + 1}', textAlign: TextAlign.center, style: Bold.title),
      TextButton(
        onPressed: () => _removePackage(ref, index),
        child: Text(
          l10n.delete,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFFF2C2C),
            fontSize: 15,
            fontFamily: 'Open',
            fontVariations: <FontVariation>[FontVariation('wght', 650)],
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    ],
  );

  void _removePackage(final WidgetRef ref, final int index) {
    ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> state) {
      final List<PackagesDetail> packages = <PackagesDetail>[...state];

      if (index == packages.length - 1) {
        ref.watch(activeIndex.notifier).state = index - 1;
      }
      packages.removeAt(index);

      return packages;
    });
  }

  Widget _buildDropdown(
    final int index,
    final PackagesDetail packages,
    final List<MapEntry<Place, ReceiverDetails?>> places,
    final WidgetRef ref,
    final BuildContext context,
  ) => DecoratedBox(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFFEEEEEE), width: 2)),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<int>(
        borderRadius: BorderRadius.circular(8),
        padding: const EdgeInsets.symmetric(horizontal: padding),
        isExpanded: true,
        value: packages.type,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: List.generate(
          places.length,
          (final int i) => DropdownMenuItem(value: i, child: Text(places.elementAt(i).value?.fullName ?? '', style: Secondary.titleLarge)),
        ),
        onChanged: (final int? i) {
          ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> pk) {
            final PackagesDetail updatedPackages = packages;
            pk[index] = updatedPackages.copyWith(type: i);
            return pk;
          });
        },
        style: Theme.of(context).textTheme.titleLarge,
      ),
    ),
  );

  Widget _buildTextField(
    final String hintText,
    final String? initial,
    final WidgetRef ref,
    final int index, [
    final Widget? prefixIcon,
    final TextInputType inputType = TextInputType.text,
  ]) => TextFormField(
    keyboardType: inputType,
    controller: TextEditingController(text: initial),
    onChanged:
        (final String value) =>
            prefixIcon == null
                ? ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> state) {
                  final List<PackagesDetail> packages = <PackagesDetail>[...state];
                  packages[index] = packages.elementAt(index).copyWith(description: value);
                  return packages;
                })
                : null,
    decoration: InputDecoration(prefixIcon: prefixIcon, hintText: hintText, enabledBorder: secondaryBorder, border: secondaryBorder),
  );

  Widget _buildAddPhotoButton(final WidgetRef ref, final int index) => FilledButton.icon(
    onPressed: () {
      //  final ImagePicker picker = ImagePicker();

      //  final XFile? photo = await picker.pickImage(source: ImageSource.camera);
      // if (photo?.path != null) {
      //   final Response res = await Request.upload(file: File(photo!.path));
      //   if (res.statusCode > 199) {
      //     ref.read(packageDetailProvider.notifier).update((List<PackagesDetail> packages) {
      //       final List<PackagesDetail> pack = <PackagesDetail>[...packages];

      //       pack[index] = packages.elementAt(index).copyWith(media: <String>[...(pack.elementAt(index).media ?? <String>[]), jsonDecode(res.body)['url']]);

      //       return pack;
      //     });
      //   } else {}
      // }
    },
    style: FilledButton.styleFrom(fixedSize: const Size(500, boxHeight), backgroundColor: const Color(0xFFEEEEEE), foregroundColor: darkgrey),
    icon: const Icon(CupertinoIcons.camera_fill),
    label: Text(l10n.add_package_photos, style: const TextStyle(fontSize: 15, fontVariations: <FontVariation>[FontVariation('wght', 450)])),
  );
}
