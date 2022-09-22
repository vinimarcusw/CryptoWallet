import 'package:dio/dio.dart';

class AssetEndpoint {
  final Dio _dio;

  AssetEndpoint(this._dio);

  Future<Response> getAllAssets() {
    return _dio.get(
        "coins/markets?vs_currency=brl&order=market_cap_desc&per_page=100&page=1&sparkline=false");
  }
}
