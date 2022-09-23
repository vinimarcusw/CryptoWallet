import 'package:crypto_wallet/shared/api/model/asset/get_all_assets_response.dart';

import '../model/asset_view_data.dart';

extension AssetMapper on GetAllAssetsResponse {
  List<AssetViewData> toViewData() {
    return assets
        .map((asset) => AssetViewData(
              id: asset.id,
              name: asset.name,
              symbol: asset.symbol,
              image: asset.image,
              variation: asset.variation,
              currentPrice: asset.currentPrice,
            ))
        .toList();
  }
}
