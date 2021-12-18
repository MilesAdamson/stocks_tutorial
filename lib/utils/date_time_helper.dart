import 'package:intl/intl.dart';

class DateTimeHelper {
  static int toJson(DateTime dateTime) => dateTime.millisecondsSinceEpoch;

  static DateTime fromJson(int unixTimestamp) =>
      DateTime.fromMillisecondsSinceEpoch(unixTimestamp);
}

extension DateTimeExtensions on DateTime {
  String get dayMonthYearLabel => DateFormat.yMMMd().format(this);
}
