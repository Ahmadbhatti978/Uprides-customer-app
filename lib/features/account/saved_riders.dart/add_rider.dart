import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/constants.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/bottom_navigation_button.dart';
import '../../../core/widgets/filled_phone_no.dart';
import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/style/typo.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import 'provider/add_riders_provider.dart';
import 'provider/save_riders.dart';

// Use ConsumerWidget for direct access to ref in the build method
class AddRiderScreen extends ConsumerWidget {
  const AddRiderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    mediaQuery = MediaQuery.of(context);

    // ✨ Use ref.listen for side-effects like navigation or showing snackbars
    ref.listen<AsyncValue<void>>(savedRidersProvider, (_, state) {
      state.whenOrNull(
        error: (error, stackTrace) => showSnackBar(error.toString()),
        data: (_) {
          showSnackBar("Rider added successfully!");
          Navigator.pop(context);
        },
      );
    });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: NameBackBar(title: l10n.add_a_rider),
      body: ListView(
        padding: EdgeInsets.fromLTRB(padding, 24, padding, mediaQuery.viewPadding.bottom + padding),
        children: <Widget>[
          Image.asset(newRider, height: mediaQuery.size.height * .2, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: padding * 2),
            child: Text(l10n.add_rider_details, style: Bold.headingBig),
          ),
          Text(l10n.rider_full_name, style: Default.heading),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: padding * 2),
            // Use TextFormField for built-in validation
            child: TextFormField(
              onChanged: (value) => ref.read(riderNameProvider.notifier).state = value,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(hintText: "Enter full name"),
              // Validator for immediate feedback
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
          ),
          Text(l10n.rider_phone_number, style: Default.heading),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: padding * 2),
            child: FilledPhoneNo(
              // Use the dedicated provider
              onTextChanged: (number) => ref.read(riderPhoneProvider.notifier).state = number,
              readOnly: false,
              e164: ref.read(riderPhoneProvider),
              hintText: l10n.phone_no,
            ),
          ),
          Text(l10n.we_wont_share_this_phone_number_with_the_driver, style: Secondary.title),
          const Gap(12),
          CheckboxListTile(
            activeColor: primary,
            shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(8)),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            value: ref.watch(agreeConditionProvider),
            onChanged: (value) => ref.read(agreeConditionProvider.notifier).state = value ?? false,
            title: Text(l10n.agree_to_share_trip_details, style: Secondary.title),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.only(bottom: mediaQuery.viewInsets.bottom + padding),
        maintainBottomViewPadding: true,
        child: BottomNavigationButton(
          text: l10n.next,
          isLoading: ref.watch(savedRidersProvider).isLoading,
          // ✨ Button is enabled/disabled based on the single validation provider
          onPressed: ref.watch(isFormValidProvider)
              ? () {
                  // If valid, trigger the save operation
                  final String name = ref.read(riderNameProvider);
                  final String phone = ref.read(riderPhoneProvider).replaceAll(' ', '');
                  ref.read(savedRidersProvider.notifier).saveRiders(fullName: name, phone: phone);
                }
              : null, // The button is disabled if the provider returns false
        ),
      ),
    );
  }
}
