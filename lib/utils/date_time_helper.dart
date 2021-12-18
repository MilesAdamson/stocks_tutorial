import 'package:intl/intl.dart';

class DateTimeHelper {
  // They invented iso timestamps for a reason..
  // but ok lets use SECONDS since epoch for the api
  static int toJson(DateTime dateTime) =>
      (dateTime.millisecondsSinceEpoch / 1000).truncate();

  static DateTime fromJson(int unixTimestamp) =>
      DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
}

extension DateTimeExtensions on DateTime {
  String get dayMonthYearLabel => DateFormat.yMMMd().format(this);
}
