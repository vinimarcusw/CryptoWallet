import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/formatter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../controller/asset_provider.dart';

class CryptoTotalValueRow extends HookConsumerWidget {
  const CryptoTotalValueRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asset = ref.watch(assetProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            '${AppLocalizations.of(context)!.monetary} ${Formatter.currencyFormatter(asset.cryptoTotal)}',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
