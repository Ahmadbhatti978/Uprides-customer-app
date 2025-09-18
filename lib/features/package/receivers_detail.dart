import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/router/route.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../core/widgets/buttons/filled_black_button.dart';
import '../../core/widgets/phone_no.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import '../booking/addlocation/model/place.dart';
import 'component/send.dart';
import 'model/package.dart';
import 'package_detail.dart';

class ReceiversDetails extends ConsumerWidget {
  const ReceiversDetails({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final List<MapEntry<Place, ReceiverDetails?>> places = <MapEntry<Place, ReceiverDetails?>>[...ref.read(locationProvider)]..removeAt(0);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const NameBackBar(title: 'Receivers details'),
      body: places.length > 1 ? multipleReceivers(places, ref) : singleReceiver(places, ref),
      bottomNavigationBar: bottomNavigationBar(context, ref, places.length),
    );
  }

  Widget multipleReceivers(final List<MapEntry<Place, ReceiverDetails?>> places, final WidgetRef ref) => ListView.builder(
    cacheExtent: 2000,
    padding: const EdgeInsets.all(padding),
    itemCount: places.length,
    itemBuilder: (final BuildContext context, final int index) => receiverItem(index, places[index], ref),
  );

  Widget singleReceiver(final List<MapEntry<Place, ReceiverDetails?>> places, final WidgetRef ref) => ListView(
    padding: const EdgeInsets.symmetric(horizontal: padding),
    children: <Widget>[
      Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Image.asset(packageReceiver)),
        Text(l10n.add_receivers_details, style: Default.headingBig),
      const Gap(padding * 2),
      receiverDetails(0, places.first, ref),
    ],
  );

  Widget receiverItem(final int index, final MapEntry<Place, ReceiverDetails?> place, final WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Receiver ${index + 1}', style: Default.headingBig),
      const Gap(padding),
      Row(
        children: <Widget>[
          Container(
            height: 18,
            width: 18,
            color: Colors.black,
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(4, 4, 12, 4),
            child: Text((index + 1).toString(), style: White.bodyLarge),
          ),
          Text(place.key.mainText ?? '', style: Primary.title),
        ],
      ),
      const Gap(padding * 2),
      receiverDetails(index, place, ref),
    ],
  );

  Widget receiverDetails(final int index, final MapEntry<Place, ReceiverDetails?> place, final WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
        Text(l10n.receiver_full_name, style: Default.heading),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextFields(initialValue: place.value?.fullName, onChanged: (final String value) => _updatePlace(ref, index, fullName: value)),
      ),
      const Gap(24),
        Text(l10n.receiver_phone_number, style: Default.heading),
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 32),
        child: PhoneNo(initPhone: place.value!.phone, onTextChanged: (final String text) => _updatePlace(ref, index, phone: text)),
      ),
    ],
  );

  // ignore: non_constant_identifier_names
  Widget TextFields({required final String? initialValue, required final ValueChanged<String> onChanged}) => TextField(
    controller: TextEditingController(text: initialValue),
    onChanged: onChanged,
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.send,
  );

  void _updatePlace(final WidgetRef ref, int index, {final String? fullName, final String? phone}) {
    ref.read(locationProvider.notifier).update((final List<MapEntry<Place, ReceiverDetails?>> state) {
      final List<MapEntry<Place, ReceiverDetails?>> newState = List.of(state);
      final int updatedIndex = index + 1;
      final MapEntry<Place, ReceiverDetails?> updatedValue = newState.elementAt(updatedIndex);

      final ReceiverDetails receiver = updatedValue.value!.copyWith(
        fullName: fullName ?? updatedValue.value!.fullName,
        phone: phone ?? updatedValue.value!.phone,
      );
      newState[updatedIndex] = MapEntry(updatedValue.key, receiver);
      return newState;
    });
  }

  Widget bottomNavigationBar(final BuildContext context, final WidgetRef ref, final int placesLength) => Padding(
    padding: EdgeInsets.fromLTRB(16, 0, 16, 32 + mediaQuery.viewInsets.bottom),
    child: BlackButton(
      text: 'Next',
      onPressed: () {
        ref.read(packageDetailProvider.notifier).update((final List<PackagesDetail> state) {
          List<PackagesDetail> packages = List<PackagesDetail>.from(state);

          // Update existing packages
          packages = packages.map((final PackagesDetail p) => p.copyWith(type: (p.type != null && p.type! < placesLength) ? p.type : 0)).toList();

          // Add new packages if needed
          while (packages.length < placesLength) {
            packages.add(PackagesDetail(type: packages.length));
          }

          return packages;
        });

        Navigator.pushNamed(context, AppRoutes.packageDetail);
      },
    ),
  );
}
