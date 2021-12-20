# Stocks Tutorial

### 0. Prerequisites
- Know how freezed is used to generate `toString`, `equality`, `copyWith` and `hashCode`
- Know how json serializable is used to generate `toJson` and `fromJson`
- Know in general how bloc and cubit work

### 1. Background
- Show what is meant by a candle on a stocks chart
- Define open, close, high, low, bullish, bearish
- Intro to `syncfusion_flutter_charts`

### 2. Finnhub API
- Explore the finnhub API
- Show example request for the endpoint used: `/v1/stock/candle`

### 3. Modelling
- Define the api models in dart classes using freezed and json serializable
- Generate .freezed and .g files with this command:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

- Map the api payload into a nicer model to plot with

### 4. API in Dart
- Use a `.env` file with `flutter_config` to store our api key
- Use the finnhub API to get a stock quote

### 5. App State
- Define our apps state
- Using bloc (cubit), call our API to put the candles into app state

### 6. Search Form
- Allows the user to search via symbol, start date and end date

### 7. Charting
- Show that the request is loading, then display a chart or error