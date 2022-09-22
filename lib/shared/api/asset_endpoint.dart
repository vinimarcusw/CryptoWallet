import 'package:dio/dio.dart';

class AssetEndpoint {
  final Dio _dio;

  AssetEndpoint(this._dio);

  Future<Response> getAllAssets(String ids, String currency) {
    return _dio.get("markets", queryParameters: {
      'vs_currency': currency,
      'ids': ids,
    });
  }
}
