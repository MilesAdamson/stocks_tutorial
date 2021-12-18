class DateTimeHelper {
  static int toJson(DateTime dateTime) => dateTime.millisecondsSinceEpoch;

  static DateTime fromJson(int unixTimestamp) =>
      DateTime.fromMillisecondsSinceEpoch(unixTimestamp);
}
