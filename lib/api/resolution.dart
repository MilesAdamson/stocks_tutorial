enum Resolution {
  oneMinute,
  fiveMinutes,
  fifteenMinutes,
  thirtyMinutes,
  hour,
  day,
  month,
}

extension ResolutionExtensions on Resolution {
  /// Returns a case-sensitive code for the api which determines
  /// the time-width resolution of candles returned
  String get apiKey {
    switch (this) {
      case Resolution.oneMinute:
        return "1";
      case Resolution.fiveMinutes:
        return "5";
      case Resolution.fifteenMinutes:
        return "15";
      case Resolution.thirtyMinutes:
        return "30";
      case Resolution.hour:
        return "60";
      case Resolution.day:
        return "D";
      case Resolution.month:
        return "M";
    }
  }

  String get label {
    switch (this) {
      case Resolution.oneMinute:
        return "One minute";
      case Resolution.fiveMinutes:
        return "Five minutes";
      case Resolution.fifteenMinutes:
        return "Fifteen minutes";
      case Resolution.thirtyMinutes:
        return "Thirty minutes";
      case Resolution.hour:
        return "One hour";
      case Resolution.day:
        return "One day";
      case Resolution.month:
        return "One month";
    }
  }

  Duration get duration {
    switch (this) {
      case Resolution.oneMinute:
        return const Duration(minutes: 1);
      case Resolution.fiveMinutes:
        return const Duration(minutes: 5);
      case Resolution.fifteenMinutes:
        return const Duration(minutes: 15);
      case Resolution.thirtyMinutes:
        return const Duration(minutes: 30);
      case Resolution.hour:
        return const Duration(hours: 1);
      case Resolution.day:
        return const Duration(hours: 24);
      case Resolution.month:
        return const Duration(days: 31);
    }
  }

  static String toJson(Resolution resolution) => resolution.apiKey;
}
