import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../controller/asset_provider.dart';
import 'bottom_convert_button.dart';
import 'crypto_prices_information.dart';
import 'crypto_fraction_bottom_info.dart';
import 'crypto_top_list_tile.dart';
import 'crypto_total_value_row.dart';

class DetailsPageBody extends HookConsumerWidget {
  const DetailsPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asset = ref.watch(assetProvider);
    return Column(
      children: [
        const CryptoTopListTile(),
        const CryptoTotalValueRow(),
        const SizedBox(height: 190),
        const Divider(thickness: 1),
        CryptoPricesInformation(
            value: asset.cryptoTotal,
            title: AppLocalizations.of(context)!.detailsActualPrice),
        const Divider(thickness: 1),
        CryptoPricesInformation(
            value: asset.cryptoTotal,
            title: AppLocalizations.of(context)!.detailsActualPrice),
        const Divider(thickness: 1),
        const CryptoFractionBottomInfo(),
        const Divider(thickness: 1),
        CryptoPricesInformation(
            value: asset.cryptoValues.last,
            title: AppLocalizations.of(context)!.detailsValue),
        const SizedBox(height: 20),
        const BottomConvertButton(),
      ],
    );
  }
}
