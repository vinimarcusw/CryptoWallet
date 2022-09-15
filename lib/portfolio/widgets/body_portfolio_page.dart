import 'package:crypto_wallet/portfolio/widgets/crypto_coins_list.dart';
import 'package:flutter/material.dart';

import 'wallet_information.dart';

class BodyPortfolioPage extends StatelessWidget {
  const BodyPortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        WalletInformation(),
        CryptoCoinsList(),
      ],
    );
  }
}
