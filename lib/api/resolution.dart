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

  static String toJson(Resolution resolution) => resolution.apiKey;
}
