import 'package:crypto_wallet/portfolio/model/asset_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final assetProvider = StateProvider((ref) => AssetModel(
      cryptoValues: [0.0],
      cryptoTotal: 0.0,
      cryptoIcon: '',
      cryptoSymbol: '',
      cryptoName: '',
    ));
