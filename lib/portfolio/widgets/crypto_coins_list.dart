import 'package:crypto_wallet/portfolio/controller/asset_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../details/controller/asset_provider.dart';
import '../../shared/utils/app_routes.dart';
import '../../shared/utils/formatter.dart';
import '../controller/total_value_provider.dart';
import '../controller/visibility_provider.dart';
import '../model/asset_model.dart';
import '../model/asset_view_data.dart';

class CryptoCoinsList extends StatefulHookConsumerWidget {
  const CryptoCoinsList({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<CryptoCoinsList> createState() => _CryptoCoinsListState();
}

class _CryptoCoinsListState extends ConsumerState<CryptoCoinsList> {
  @override
  Widget build(BuildContext context) {
    final bool visible = ref.watch(visibility);
    // final List<AssetModel> assets = ref.watch(assetsList);
    final assets = ref.read(assetUsecaseProvider).execute();
    return Expanded(
      child: FutureBuilder(
        future: assets,
        builder: (context, AsyncSnapshot<List<AssetViewData>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Text(snapshot.data![index].name);
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
