import 'package:crypto_wallet/shared/api/asset_endpoint.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final assetEndpointProvider = Provider((ref) {
  final dio =  Dio(BaseOptions(baseUrl: "https://api.coingecko.com/api/v3/coins/"));
  return AssetEndpoint(dio);
});
