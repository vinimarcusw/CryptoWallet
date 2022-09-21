import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../shared/utils/formatter.dart';

class CryptoPricesInformation extends StatelessWidget {
  const CryptoPricesInformation({
    required this.value,
    required this.title,
    Key? key,
  }) : super(key: key);

  final double value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color.fromRGBO(117, 118, 128, 1),
              fontSize: 19,
            ),
          ),
          Text(
            '${AppLocalizations.of(context)!.monetary} ${Formatter.currencyFormatter(value)}',
            style: const TextStyle(fontSize: 19),
          ),
        ],
      ),
    );
  }
}
