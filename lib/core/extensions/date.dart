import 'package:intl/intl.dart';
import '../../features/home/model/trending_place.dart';
import '../constants/constants.dart';

extension DateTimeFormatting on DateTime {
  /// Formats the DateTime object as 'dd-MM-yyyy'.
  String toFormattedDate() => DateFormat('dd-MM-yyyy').format(this);
  String toFormattedDayMonthday() => DateFormat('EEEE, MMM d').format(this);
  String toTime() =>  DateFormat('hh:mm a').format(this);
  //"July 22, 8:45 AM"
  String toMonthDayTime() => DateFormat('MMMM d, h:mm a').format(this);

  // Returns a string in the form "hh:mm a, <Today|Tomorrow|Weekday>"
  String formatDateTimeWithRelativeDay() {
    final now = DateTime.now();
    // Strip off time for pure date comparison
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(year, month, day);

    final int difference = targetDate.difference(today).inDays;
    String dayLabel;
    if (difference == 0) {
      dayLabel = 'Today';
    } else if (difference == 1) {
      dayLabel = 'Tomorrow';
    } else {
      // Fallback to weekday name, e.g. "Wednesday"
      dayLabel = DateFormat.EEEE().format(this);
    }

    // Format time as "04:30 PM"
    final String timeLabel = DateFormat('hh:mm a').format(this);

    return '$timeLabel, $dayLabel';
  }
  // 04:30 PM, (Today , Tomorrow , Wednesday, etc)

  String toALl() => DateFormat('MMMM dd yyyy, EEEE').format(this);

  // Returns a string in the form "hh:mm a, <Today|Tomorrow|Weekday>"
  String formatDaywithRelativeDay() {
    final now = DateTime.now();
    // Strip off time for pure date comparison
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(year, month, day);

    final int difference = targetDate.difference(today).inDays;
    String dayLabel;
    if (difference == 0) {
      dayLabel = 'Today';
    } else if (difference == 1) {
      dayLabel = 'Tomorrow';
    } else {
      // Fallback to weekday name, e.g. "Wednesday"
      dayLabel = DateFormat.EEEE().format(this);
    }

    return dayLabel;
  }

  String get toRelativeFormat {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final DateTime yesterday = today.subtract(const Duration(days: 1));
    final dateOnly = DateTime(year, month, day);
    
    if (dateOnly.isAtSameMomentAs(today)) {
      return 'Today';
    } else if (dateOnly.isAtSameMomentAs(yesterday)) {
      return 'Yesterday';
    } else {
      return DateFormat('dd MMMM, yyyy').format(this);
    }
  }

  // 04:30 PM, (Today , Tomorrow , Wednesday, etc)
}

String getTodayOpeningTime(CurrentOpeningHours? openingHours) {
  if (openingHours == null || openingHours.periods == null) return closedToday;

  final now = DateTime.now();
  final String todayDateStr = DateFormat('yyyy-MM-dd').format(now);

  for (final Period period in openingHours.periods!) {
    final Close? open = period.open;
    final Date? date = open?.date;

    if (date == null) continue;

    final openDateStr = '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

    if (openDateStr == todayDateStr) {
      final openTime = DateTime(date.year!, date.month!, date.day!, open!.hour ?? 0, open.minute ?? 0);
      return DateFormat.jm().format(openTime); // e.g. "9:00 AM"
    }
  }

  return closedToday;
}

String formatDuration(final Duration duration) {
  final int hours = duration.inHours;
  final int minutes = duration.inMinutes.remainder(60);

  final String hoursText = hours == 1 ? 'hr' : 'hrs';
  final String minutesText = minutes == 1 ? 'min' : 'mins';

  return (hours == 0 ? '' : '$hours $hoursText') +
      (minutes == 0 ? '' : ' $minutes $minutesText') +
      (hours == 0 && minutes == 0 ? "${duration.inSeconds} sec" : "");
}
