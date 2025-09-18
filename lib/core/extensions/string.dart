extension Gradient on String {
  int get hexTo0xFF {
    final String hex = this;

    // 1. Remove '#' if present and convert to uppercase.
    final buffer = StringBuffer();
    if (hex.startsWith('#')) {
      buffer.write(hex.substring(1));
    } else {
      buffer.write(hex);
    }

    // 2. If the hex string is 6 characters (e.g., "RRGGBB"),
    //    prepend "FF" for the alpha channel to make it "AARRGGBB".
    if (buffer.length == 6) {
      buffer
        ..write('FF$buffer')
        ..clear() // Clear the buffer before writing the new string
        ..write('FF${hex.replaceAll('#', '')}');
    }

    // 3. Prepend "0x" to the 8-character hex string and parse it as an integer.
    //    The result will be in the format 0xAARRGGBB.
    return int.parse('0x$buffer');
  }

  String get phoneNumber {
    final String phoneNumber = this;
    // Check if the phone number has exactly 10 digits
    if (phoneNumber.length <= 10) {
      throw ArgumentError('Phone number must have exactly 10 digits');
    }

    // Extract parts of the phone number
    final String dial = phoneNumber.substring(0, phoneNumber.length - 10); //
    final String firstPart = phoneNumber.substring(phoneNumber.length - 10, phoneNumber.length - 6); // 7123
    final String secondPart = phoneNumber.substring(phoneNumber.length - 6, phoneNumber.length - 3); // 123
    final String thirdPart = phoneNumber.substring(phoneNumber.length - 3); // 456

    // Concatenate parts with spaces
    return '$dial $firstPart $secondPart $thirdPart';
  }
}

extension StringX on String? {
  String capitalizeFirst() {
    if (this == null || this!.isEmpty) return "";

    return '${this![0].toUpperCase()}${this!.substring(1)}';
  }

  bool get isNotBlank => this != null && this!.isNotEmpty;

  String get capitalize {
    if (this == null || this!.isEmpty) {
      return '';
    }
    return '${this![0].toUpperCase()}${this!.substring(1)}';
  }

  bool get isBlank => this == null || this!.isEmpty;
}

extension ListX<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
