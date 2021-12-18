import 'package:intl/intl.dart';

class DateTimeHelper {
  static int toUnixSeconds(DateTime dateTime) =>
      (dateTime.millisecondsSinceEpoch / 1000).truncate();

  static DateTime fromUnixSeconds(int unixTimestamp) =>
      DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
}

extension DateTimeExtensions on DateTime {
  String get dayMonthYearLabel => DateFormat.yMMMd().format(this);
}
