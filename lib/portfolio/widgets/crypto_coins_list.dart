import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/formatter.dart';
import '../controller/asset_provider.dart';
import '../controller/user_assets_provider.dart';
import '../controller/visibility_provider.dart';
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
    final userAssets = ref.watch(userAssetsProvider);
    final assets = ref.read(assetUsecaseProvider).execute(userAssets, 'usd');
    return Expanded(
      child: FutureBuilder(
        future: assets,
        builder: (context, AsyncSnapshot<List<AssetViewData>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var asset = snapshot.data![index];
                return Column(
                  children: [
                    const Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      minVerticalPadding: 10,
                      onTap: () {
                        // ref.read(assetProvider.notifier).state = asset;
                        // Navigator.of(context).push(
                        //   PageRouteBuilder(
                        //       pageBuilder: (context, animation, secondaryAnimation) =>
                        //           AppRoutes.routes['/details']!),
                        // );
                      },
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(asset.image),
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            asset.name,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            asset.symbol.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                visible
                                    ? '${AppLocalizations.of(context)!.monetary} ${Formatter.currencyFormatter(asset.currentPrice.toDouble())}'
                                    : "****",
                                style: const TextStyle(fontSize: 20),
                              ),
                              Text(
                                visible
                                    ? "${Formatter.fractionFormatter(
                                        asset.currentPrice.toDouble(),
                                        asset.currentPrice.toDouble(),
                                        false,
                                      )} ${asset.symbol.toUpperCase()}"
                                    : "****",
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
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
