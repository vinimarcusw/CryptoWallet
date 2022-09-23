import 'package:crypto_wallet/shared/api/asset_endpoint.dart';
import 'package:crypto_wallet/shared/api/model/asset/asset_result_response.dart';
import 'package:crypto_wallet/shared/api/model/asset/get_all_assets_response.dart';

class AssetRepository {
  final AssetEndpoint assetEndpoint;

  AssetRepository({required this.assetEndpoint});

  Future<GetAllAssetsResponse> getAllAssets(String ids, String currency) async {
    final result = await assetEndpoint.getAllAssets(ids,currency);
    return GetAllAssetsResponse(
      List.from(
        result.data.map(
          (asset) => AssetResultResponse.fromJson(asset),
        ),
      ),
    );
  }
}
