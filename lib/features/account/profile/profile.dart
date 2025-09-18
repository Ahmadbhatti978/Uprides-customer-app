import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/constants/constants.dart';
import '../../../core/failure/failure.dart';
import '../../../core/functions/current_status.dart';
import '../../../core/global_loading_provider.dart';
import '../../../core/router/route.dart';
import '../../../core/widgets/align/form_row.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';
import '../../../core/widgets/buttons/filled_black_button.dart';
import '../../../core/widgets/filled_phone_no.dart';
import '../../../l10n/app_localizations.dart';
import '../../../main.dart';
import '../../../util/style/typo.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../../auth/repositories/auth_local.dart';
import '../../booking/book_ride/provider/ride_data.dart';
import '../../home/provider/fcm.dart';
import '../provider/logout.dart';
import 'component/delete_dialog.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController controller = TextEditingController(text: guser?.fullName ?? '');
  String photoPath = '';
  bool isLoading = false;
  String? _selectedValue = guser?.language;

  // Add these lines:
  late String _initialName;
  late String _initialPhoto;
  late String _initialLanguage;
  bool get _hasChanged =>
      controller.text.trim() != _initialName ||
      (photoPath.isNotEmpty && photoPath != _initialPhoto) ||
      (_selectedValue != null && _selectedValue != _initialLanguage);

  @override
  void initState() {
    super.initState();
    _initialName = guser?.fullName ?? '';
    _initialPhoto = guser?.profilePic ?? '';
    _initialLanguage = guser?.language ?? '';
    controller.addListener(() => setState(() {})); // To update UI on name change
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final Map<String, String> lan = languages.firstWhere((y) => y["code"] == guser!.language, orElse: () => {'name': 'Português', 'code': 'pt'});
  @override
  Widget build(final BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: NameBackBar(title: l10n.your_profile),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width: 72 + 6,
                    height: 72,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 36,
                          backgroundImage:
                              photoPath.isEmpty
                                  ? guser?.profilePic != null
                                      ? CachedNetworkImageProvider(guser?.profilePic ?? '')
                                      : null
                                  : FileImage(File(photoPath)),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: SizedBox.square(
                            dimension: 24,
                            child: IconButton.filled(
                              alignment: Alignment.center,
                              onPressed: () async {
                                final XFile? photo = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 5, requestFullMetadata: false);
                                setState(() => photoPath = photo?.path ?? '');
                              },
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.add_rounded),
                              iconSize: 22,
                              visualDensity: VisualDensity.compact,
                              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF18C4B8))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(padding),
                Text(l10n.your_name, style: Default.heading),

                TextField(controller: controller),
                const Gap(padding),
                Text(l10n.your_email_address, style: Secondary.headingBold),

                TextFormField(enabled: false, initialValue: guser?.email ?? ''),
                const Gap(padding),
                Text(l10n.your_phone_number, style: Secondary.headingBold),

                FilledPhoneNo(e164: guser?.phone ?? '', onTextChanged: (final String x) {}, readOnly: true),
                const Gap(padding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(l10n.preferred_language, style: Default.heading),
                    TextButton(
                      onPressed: () {
                        _openDraggableBottomSheet(context);
                      },
                      child: Column(
                        children: [
                          Text(l10n.change, style: Default.headingSmall),
                          Container(width: 65, height: 2, decoration: const ShapeDecoration(color: Colors.black, shape: StadiumBorder())),
                        ],
                      ),
                    ),
                  ],
                ),
                Text((_selectedValue == null ? lan : languages.firstWhere((y) => y["code"] == _selectedValue, orElse: () => lan))["name"]!),

                const Gap(p12),
              ],
            ),
          ),
          Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final Widget? child) =>
                    FormRow(title: l10n.logout, icon: Icons.logout, isLoading: ref.watch(gloading), onTap: () => logOut(ref, context)),
          ),

          FormRow(
            title: l10n.delete_account,
            icon: CupertinoIcons.delete,
            onTap: () => showDialog(context: context, builder: (context) => const DeleteDialog()),
          ),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: _hasChanged,
        child: SafeArea(
          maintainBottomViewPadding: true,
          minimum: const EdgeInsets.all(padding),

          child: Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final Widget? child) => BlackButton(
                  isLoading: isLoading,
                  text: l10n.save,
                  onPressed:
                      !_hasChanged
                          ? null
                          : () async {
                            setState(() => isLoading = true);
                            (await updateUserInfo(
                              fullName: guser?.fullName == controller.text ? null : controller.text,
                              file: photoPath.isEmpty ? null : File(photoPath),
                              language: _selectedValue,
                              fileField: 'profile_pic',
                            )).fold((final ErrorDetails l) => showSnackBar(l.message, context: context), (final Map<String, dynamic> user) {
                              showSnackBar(l10n.profile_updated_successfully, context: context);
                              AuthLocalRepo.saveUserMap(user);
                              // Reset initial values after save
                              setState(() {
                                _initialName = controller.text.trim();
                                _initialPhoto = photoPath.isNotEmpty ? photoPath : (guser?.profilePic ?? '');
                                _initialLanguage = _selectedValue ?? (guser?.language ?? '');
                                ref.read(locale.notifier).state = Locale(_initialLanguage);
                                slocal = Locale(_initialLanguage);
                              });
                            });
                            setState(() => isLoading = false);
                          },
                ),
          ),
        ),
      ),
    );
  }

  Future<void> logOut(WidgetRef ref, BuildContext context) async {
    ref.read(gloading.notifier).state = true;
    if (await ref.watch(currentRideHappeningProvider.future)) {
      // ignore: use_build_context_synchronously
      await _showRideInProgressDialog(context, ref, rideId!);
    } else {
      ref.read(logOutofAppProvider);
    }
    ref.read(gloading.notifier).state = false;
  }

  Future<void> _showRideInProgressDialog(BuildContext context, WidgetRef ref, String id) async {
    await showCupertinoDialog(
      context: context,
      builder:
          (context) => CupertinoAlertDialog(
            title: Text(l10n.ride_in_progress),
            content: Text(l10n.you_already_have_an_active_ride_to_log_out),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () => Navigator.of(context).pop(),
                child: Text(l10n.okay, style: const TextStyle(color: Colors.blue)),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  currentRoute = AppRoutes.bottomNavigationScreen;
                  ref.refresh(RideDataProvider(rideId!));
                  Navigator.pop(context);
                },
                child: Text(l10n.view_current_ride, style: const TextStyle(color: Colors.blue)),
              ),
            ],
          ),
    );
  }

  void _openDraggableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,

      isScrollControlled: true, // Required for draggable height
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      //  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        bool showDivider = false;
        return StatefulBuilder(
          builder:
              (context, state) => DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.33,
                minChildSize: 0.3,
                maxChildSize: (languages.length.clamp(4, 9) / 10) - 0.02,
                builder: (context, scrollController) {
                  scrollController.addListener(() {
                    if (scrollController.offset > 0 && !showDivider) {
                      state(() => showDivider = true);
                    } else if (scrollController.offset <= 0 && showDivider) {
                      state(() => showDivider = false);
                    }
                  });

                  return Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(mediaQuery.viewPadding.bottom),

                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(18)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(padding),
                        ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: p24, bottom: padding / 2),
                            child: SizedBox(width: 1000, child: Text(l10n.language, style: Default.headingSmall)),
                          ),
                        ),
                        AnimatedOpacity(opacity: showDivider ? 1.0 : 0.0, duration: Durations.short2, child: const Divider(height: 1)),

                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(vertical: padding / 2),
                            controller: scrollController,
                            children: List<Widget>.generate(
                              languages.length,
                              (final int index) => RadioListTile<String>(
                                dense: true,
                                //      contentPadding: EdgeInsets.zero,
                                title: Text(
                                  languages.elementAt(index)['name'] ?? '',
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontVariations: <FontVariation>[FontVariation('wght', 580)],
                                    letterSpacing: -0.2,
                                  ),
                                ),
                                subtitle: Text(languages.elementAt(index)['en'] ?? ''),
                                value: languages.elementAt(index)["code"]!,
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() => _selectedValue = value);
                                  Navigator.pop(context);
                                },
                              ),
                              // Padding(
                              //                 padding: const EdgeInsets.symmetric(vertical: padding / 2),
                              //                 child: Row(children: <Widget>[]),
                              //               ),
                            ),
                          ),
                        ),
                        // const Padding(padding: EdgeInsets.only(left: p24, right: p24, bottom: p24), child: BlackButton(text: "Select")),
                      ],
                    ),
                  );
                },
              ),
        );
      },
    );
  }
}
