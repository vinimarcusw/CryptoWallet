import 'package:crypto_wallet/details/controller/asset_provider.dart';
import 'package:crypto_wallet/details/controller/time_window_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/formatter.dart';

class CryptoVariationInfo extends HookConsumerWidget {
  const CryptoVariationInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asset = ref.watch(assetProvider);
    final dayProvider = ref.watch(timeWindowProvider);
    final variation = Formatter.variationFormatter(
        asset.cryptoValues.reversed.toList().first,
        asset.cryptoValues.reversed.toList()[dayProvider - 1]);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${AppLocalizations.of(context)!.detailsVariation} ${dayProvider}D',
            style: const TextStyle(
              color: Color.fromRGBO(117, 118, 128, 1),
              fontSize: 19,
            ),
          ),
          Text(
            variation,
            style: TextStyle(
              fontSize: 19,
              color: variation.toString().contains('+')
                  ? Colors.green
                  : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
