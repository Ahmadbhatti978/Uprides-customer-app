
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/route.dart';
import '../../../../core/widgets/buttons/filled_black_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../../../util/image_assets.dart';
import '../../../../util/variable.dart';

final languageSearchProvider = StateProvider<String>((ref) => '');

class Languages extends ConsumerWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String? selectedLanguage = (ref.watch(locale) ?? slocal)?.languageCode;
    final String searchQuery = ref.watch(languageSearchProvider);

    // Filter languages based on search query
    final List<Map<String, String>> filteredLanguages =
        searchQuery.isEmpty ? languages : languages.where((lang) => lang['name']!.toLowerCase().contains(searchQuery.trim().toLowerCase())).toList();

    l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.only(bottom: p12),
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: <Widget>[
              Center(child: Image.asset(language, width: 100, height: 100)),
              const SizedBox(height: 24),
              // SearchBar(
              //   elevation: const WidgetStatePropertyAll(0),
              //   side: const WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
              //   leading: const Icon(CupertinoIcons.search),
              //   hintText: l10n.search_for_language,
              //   onChanged: (final String value) {
              //     ref.read(languageSearchProvider.notifier).state = value;
              //   },
              // ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  itemCount: filteredLanguages.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 22,
                  ),
                  itemBuilder: (final BuildContext context, final int index) {
                    final Map<String, String> lang = filteredLanguages[index];
                    return OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: selectedLanguage == lang['code'] ? Colors.black : Colors.white,
                        foregroundColor: selectedLanguage == lang['code'] ? Colors.white : Colors.black,
                        side: const BorderSide(),
                      ),
                      onPressed: () {
                        slocal = Locale(lang['code']!);
                        ref.read(locale.notifier).state = slocal;
                      },
                      child: Text(lang['name']!),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.only(bottom: p12),
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: BlackButton(onPressed: () => Navigator.pushNamed(context, AppRoutes.sign), text: l10n.ontinue),
        ),
      ),
    );
  }
}
