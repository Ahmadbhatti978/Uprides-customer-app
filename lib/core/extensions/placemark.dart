import 'dart:io';

import 'package:geocoding/geocoding.dart';

extension Address on Placemark {
  String get address {
    final String base = name?.trim() ?? '';
    final String withStreet = "$base ${street ?? ""}";
    if (Platform.isAndroid && withStreet.trim().length <= 40) {
      return withStreet.trim();
    }
    return base;
  }

  String get secondary {
    final List<String?> parts = <String?>[if (subLocality != locality) subLocality else '', subAdministrativeArea, administrativeArea, postalCode, country];
    String result = ((name != street) ? street : locality) ?? '';

    for (final String? part in parts) {
      if (part != null && part.isNotEmpty) {
        final String potential = result.isEmpty ? part : '$result $part';
        if (potential.length <= 50) {
          result = potential;
        } else {
          break;
        }
      }
    }

    return result;
  }
}
