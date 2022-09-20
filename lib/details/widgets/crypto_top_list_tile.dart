import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/asset_provider.dart';

class CryptoTopListTile extends HookConsumerWidget {
  const CryptoTopListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asset = ref.watch(assetProvider);
    return ListTile(
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            asset.cryptoName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            asset.cryptoSymbol,
            style: const TextStyle(
                fontSize: 15, color: Color.fromRGBO(117, 118, 128, 1)),
          ),
        ],
      ),
      trailing: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/icons/${asset.cryptoIcon}'),
      ),
    );
  }
}
