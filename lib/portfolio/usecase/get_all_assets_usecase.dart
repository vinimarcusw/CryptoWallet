import 'package:crypto_wallet/portfolio/model/asset_view_data.dart';
import 'package:crypto_wallet/shared/repository/asset_repository.dart';

import '../mapper/asset_mapper.dart';

class GetAllAssetsUsecase {
  final AssetRepository repository;
  
  GetAllAssetsUsecase({required this.repository});

  Future<List<AssetViewData>> execute() async {
    final response = await repository.getAllAssets();
    return response.toViewData();
  }
}
