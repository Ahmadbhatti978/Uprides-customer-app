extension DurationExtension on Duration {
  /// Formats duration as "X Hours Y Mins Z Sec"
  ///
  /// [showSeconds] determines whether seconds are displayed
  /// Zero values (hours, minutes, seconds) are automatically hidden
  String toFormattedString({final bool showSeconds = true}) {
    final int hours = inHours;
    final int minutes = inMinutes.remainder(60);
    final int seconds = inSeconds.remainder(60);

    final StringBuffer result = StringBuffer();

    // Add hours if non-zero
    if (hours > 0) {
      result.write('$hours ${hours == 1 ? 'Hour' : 'Hours'}');
    }

    // Add minutes if non-zero
    if (minutes > 0) {
      // Add space if hours were added
      if (result.isNotEmpty) {
        result.write(' ');
      }
      result.write('$minutes ${minutes == 1 ? 'Min' : 'Mins'}');
    }

    // Add seconds if showSeconds is true and seconds are non-zero
    if (showSeconds && seconds > 0) {
      // Add space if hours or minutes were added
      if (result.isNotEmpty) {
        result.write(' ');
      }
      result.write('$seconds ${seconds == 1 ? 'Sec' : 'Sec'}');
    }

    // If all components are zero, show appropriate message based on showSeconds
    if (result.isEmpty) {
      return showSeconds ? '0 Sec' : '0 Mins';
    }

    return result.toString();
  }
}
