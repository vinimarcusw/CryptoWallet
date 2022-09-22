import 'package:crypto_wallet/portfolio/usecase/get_all_assets_usecase.dart';
import 'package:crypto_wallet/shared/repository/asset_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final assetUsecaseProvider = Provider((ref) {
  return GetAllAssetsUsecase(repository: ref.read(assetRepositoryProvider));
});
