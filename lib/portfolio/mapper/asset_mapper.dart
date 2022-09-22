import 'package:crypto_wallet/shared/api/model/asset/get_all_assets_response.dart';

import '../model/asset_view_data.dart';

extension AssetMapper on GetAllAssetsResponse {
  List<AssetViewData> toViewData() {
    return results
        .map((result) => AssetViewData(
              id: result.id,
              name: result.name,
              symbol: result.symbol,
              image: result.image,
              variation: result.variation,
              currentPrice: result.currentPrice,
            ))
        .toList();
  }
}
