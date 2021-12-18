import 'package:intl/intl.dart';

class DateTimeHelper {
  static int toJson(DateTime dateTime) =>
      (dateTime.millisecondsSinceEpoch / 1000).truncate();

  static DateTime fromJson(int unixTimestamp) =>
      DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
}

extension DateTimeExtensions on DateTime {
  String get dayMonthYearLabel => DateFormat.yMMMd().format(this);
}
