import 'package:crypto_wallet/portfolio/controller/total_value_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/formatter.dart';
import '../controller/visibility_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WalletInformation extends StatefulHookConsumerWidget {
  const WalletInformation({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<WalletInformation> createState() => _WalletInformationState();
}

class _WalletInformationState extends ConsumerState<WalletInformation> {
  @override
  Widget build(BuildContext context) {
    var visible = ref.watch(visibility);
    var total = ref.watch(totalValueProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.portfolioTitle,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(224, 43, 87, 1)),
              ),
              IconButton(
                onPressed: () {
                  ref.read(visibility.notifier).state =
                      !ref.read(visibility.notifier).state;
                  setState(() {});
                },
                icon: Icon(
                  visible ? Icons.remove_red_eye : Icons.visibility_off,
                  size: 35,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            visible
                ? AppLocalizations.of(context)!.monetary +
                    Formatter.currencyFormatter(total)
                : "****",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            AppLocalizations.of(context)!.walletTotal,
            style: const TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(117, 118, 128, 1),
            ),
          ),
        ],
      ),
    );
  }
}
