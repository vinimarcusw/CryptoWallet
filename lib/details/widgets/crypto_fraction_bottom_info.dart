import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/formatter.dart';
import '../controller/asset_provider.dart';

class CryptoFractionBottomInfo extends HookConsumerWidget {
  const CryptoFractionBottomInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asset = ref.watch(assetProvider);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Quantidade',
            style: TextStyle(
              color: Color.fromRGBO(117, 118, 128, 1),
              fontSize: 19,
            ),
          ),
          Text(
            '${Formatter.fractionFormatter(asset.cryptoValues.last, asset.cryptoTotal, true)} ${asset.cryptoSymbol}',
            style: const TextStyle(
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
