import 'package:intl/intl.dart';
import 'package:stocks_tutorial/api/resolution.dart';

class DateTimeHelper {
  static int toUnixSeconds(DateTime dateTime) =>
      (dateTime.millisecondsSinceEpoch / 1000).truncate();

  static DateTime fromUnixSeconds(int unixTimestamp) =>
      DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
}

extension DateTimeExtensions on DateTime {
  String get dayMonthYearLabel => DateFormat.yMMMd().format(this);

  String formatFromResolution(Resolution resolution) {
    switch (resolution) {
      case Resolution.oneMinute:
      case Resolution.fiveMinutes:
      case Resolution.fifteenMinutes:
      case Resolution.thirtyMinutes:
      case Resolution.hour:
        return DateFormat.Hm().format(this);
      case Resolution.day:
        return DateFormat.MMMd().format(this);
      case Resolution.month:
        return DateFormat.yMMMd().format(this);
    }
  }
}
