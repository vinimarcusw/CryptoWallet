import 'package:crypto_wallet/shared/api/asset_endpoint_provider.dart';
import 'package:crypto_wallet/shared/repository/asset_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final assetRepositoryProvider = Provider((ref) {
  return AssetRepository(assetEndpoint: ref.read(assetEndpointProvider));
});