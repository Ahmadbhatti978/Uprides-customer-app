import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../util/variable.dart';
import '../constants/constants.dart';

typedef OnTextChangedCallback = void Function(String text);

class PhoneNo extends StatelessWidget {
  const PhoneNo({required this.onTextChanged, super.key, this.initPhone, this.enabled = true});
  final OnTextChangedCallback onTextChanged;

  final String? initPhone;
  final bool enabled;

  @override
  Widget build(final BuildContext context) {
    final List<String>? p = initPhone?.split(' ');
    String selectedPhone = p?.elementAtOrNull(0) ?? (countrymap[slocal?.countryCode] != null ? "+${countrymap[slocal?.countryCode]}" : "+91");
    String phone = p?.elementAtOrNull(1) ?? '';
    return Row(
      spacing: 8,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            height: 56,
            padding: const EdgeInsets.only(left: 10, right: 5),
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 221, 221, 221), width: 1.2), borderRadius: BorderRadius.circular(8)),
            child: StatefulBuilder(
              builder:
                  (final BuildContext context, final setState) => DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedPhone,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      items:
                          countrymap.entries
                              .map(
                                (final MapEntry<String, String> country) => DropdownMenuItem<String>(
                                  value: '+${country.value}',
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      // Image of the flag
                                      CachedNetworkImage(
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.fitWidth,
                                        imageUrl: 'https://flagcdn.com/40x30/${country.key.toLowerCase()}.webp',
                                        width: 24,
                                      ),

                                      Text(
                                        //   '${country['label']}
                                        '+${country.value}',
                                        style: const TextStyle(letterSpacing: -0.3, wordSpacing: -1),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                      onChanged: (final String? newValue) {
                        // onTextChanged('$newValue$phone');
                        setState(() => selectedPhone = newValue ?? '+351');
                        onTextChanged('$selectedPhone $phone');
                      },
                    ),
                  ),
            ),
          ),
        ),

        Expanded(
          flex: 7,
          child: SizedBox(
            height: 56,
            child: TextFormField(
              enabled: enabled,
              //   controller: controller,
              keyboardType: TextInputType.phone,
              onChanged: (final String value) {
                phone = value;
                onTextChanged('$selectedPhone $value');
              },
              // onFieldSubmitted: (value) {
              //   phone = value;

              //   onTextChanged('$selectedPhone $value');
              // },
              initialValue: phone,
              decoration: InputDecoration(
                hintText: l10n.enter_your_phone_number, //  'Enter your phone no.',
                focusColor: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
