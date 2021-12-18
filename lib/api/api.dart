import 'package:dio/dio.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:stocks_tutorial/models/candles_payload.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';

class Api {
  final Dio _dio;

  Api(this._dio);

  static Dio buildDefaultHttpClient(String apiKey) {
    final dio = Dio();
    dio.options.baseUrl = "https://finnhub.io/api/";
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({
          "token": apiKey,
        });

        return handler.next(options);
      },
    ));

    return dio;
  }

  Future<List<Candle>> getCandles(GetCandlesRequest request) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        "v1/stock/candle",
        queryParameters: request.toJson(),
      );

      final candlesPayload = CandlesPayload.fromJson(response.data!);
      return candlesPayload.toCandles();
    } catch (e) {
      throw ApiException();
    }
  }
}

class ApiException {
  final String message;

  ApiException([this.message = "An unknown error occurred"]);
}
