import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/widgets/appbar/name_backarrow.dart';

import '../../../util/colors.dart';
import '../../../util/image_assets.dart';
import '../../../util/utils.dart';

import '../../booking/addlocation/import.dart';

class InviteAFriendView extends StatefulWidget {
  const InviteAFriendView({super.key});

  @override
  State<InviteAFriendView> createState() => _ReferAFriendViewState();
}

class _ReferAFriendViewState extends State<InviteAFriendView> {
  bool isAppleSelected = false;

  @override
  void initState() {
    super.initState();

    isAppleSelected = Platform.isIOS;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: NameBackBar(title: l10n.invite_a_friend),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    l10n.experience_uprides_your_ride_your_way,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Open', fontVariations: [FontVariation('wght', 900)]),
                  ),
                ),
                const Gap(46),
                Row(
                  spacing: padding,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Google Button
                    Expanded(
                      child: SizedBox(
                        height: 46,
                        child: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              isAppleSelected = false;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: isAppleSelected ? Colors.white : primary,
                            foregroundColor: isAppleSelected ? primary : Colors.white,
                            side: const BorderSide(color: primary, width: 1.5),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          ),
                          icon: SvgPicture.asset(google, height: 22, color: isAppleSelected ? primary : Colors.white),
                          label: Text(l10n.google, style: const TextStyle(fontSize: 16)),
                        ),
                      ),
                    ),

                    Expanded(
                      child: SizedBox(
                        height: 46,
                        child: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              isAppleSelected = true;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: isAppleSelected ? primary : Colors.white,
                            foregroundColor: isAppleSelected ? Colors.white : primary,
                            side: const BorderSide(color: primary, width: 1.5),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          ),
                          icon: Icon(Icons.apple_rounded, size: 24, color: isAppleSelected ? Colors.white : primary),
                          label: Text(l10n.apple, style: const TextStyle(fontSize: 16)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(padding),
                Center(
                  child: isAppleSelected ? QrImageView(data: appStoreLink, size: 400) : QrImageView(data: playStoreLink, size: 400),
                ),
                const Gap(30),
                Text(
                  l10n.invite_via_link,
                  style: const TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Open', fontVariations: [FontVariation('wght', 600)]),
                ),
                const Gap(16),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFDDDDDD)), borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          Platform.isAndroid ? playStoreLink : appStoreLink,
                          //'http://Upridesapp.com/dwnload-referral/000000000000000000',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'Open', fontVariations: [FontVariation('wght', 400)]),
                        ),
                      ),
                      const Gap(16),
                      GestureDetector(
                        onTap: () {
                          copyCustomerAppToClipboard(context);
                        },
                        child: Image.asset('assets/images/copyicon.png'),
                      ),
                      const Gap(8),
                      GestureDetector(onTap: shareCustomerApp, child: Icon(Icons.share, color: Colors.grey.shade700)),
                      const Gap(8),
                    ],
                  ),
                ),
                const Gap(40),
              ],
            ),
          ),
        ),
      );

  void shareCustomerApp() {
    const String message = '''
🚗 Experience Uprides – Your Ride, Your Way!

Discover the easiest and most affordable way to move around, explore nearby places, and travel safely anytime.

✅ Book rides instantly  
✅ Track your driver live  
✅ Enjoy upfront, transparent pricing  

📲 Download the app and start riding today:  
 App Store: $appStoreLink  
▶️ Google Play: $playStoreLink  

Ride smart. Ride Uprides.
''';

    SharePlus.instance.share(ShareParams(text: message));
  }

  void copyCustomerAppToClipboard(BuildContext context) {
    const String message = '''
🚗 Experience Uprides – Your Ride, Your Way!

Discover the easiest and most affordable way to move around, explore nearby places, and travel safely anytime.

✅ Book rides instantly  
✅ Track your driver live  
✅ Enjoy upfront, transparent pricing  

📲 Download the app and start riding today:  
 App Store: $appStoreLink  
▶️ Google Play: $playStoreLink  

Ride smart. Ride Uprides.
''';

    Clipboard.setData(const ClipboardData(text: message));

    showSnackBar("Uprides Customer App link copied. Ready to share!");
  }
}
