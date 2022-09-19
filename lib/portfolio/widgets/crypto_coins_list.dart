import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../details/controller/asset_provider.dart';
import '../../shared/utils/app_routes.dart';
import '../../shared/utils/formatter.dart';
import '../controller/total_value_provider.dart';
import '../controller/visibility_provider.dart';
import '../model/asset_model.dart';

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
    final List<AssetModel> assets = ref.watch(assetsList);
    return Expanded(
      child: ListView.builder(
        itemCount: assets.length,
        itemBuilder: (context, index) {
          ref.watch(totalValueProvider) == 0.0
              ? Future.delayed(Duration.zero).then((value) => ref
                  .read(totalValueProvider.notifier)
                  .state += assets[index].cryptoTotal)
              : DoNothingAction();
          return Column(
            children: [
              const Divider(
                thickness: 1,
              ),
              ListTile(
                minVerticalPadding: 10,
                onTap: () {
                    ref.read(assetProvider.notifier).state = assets[index];
                    Navigator.of(context).push(
                      PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  AppRoutes.routes['/details']!),
                    );
                  },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage("assets/icons/${assets[index].cryptoIcon}"),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      assets[index].cryptoSymbol,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      assets[index].cryptoName,
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
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
                              ? AppLocalizations.of(context)!.monetary +
                                  Formatter.currencyFormatter(
                                      assets[index].cryptoTotal)
                              : "****",
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          visible
                              ? "${Formatter.currencyFormatter(assets[index].cryptoTotal / assets[index].cryptoValues.last)} ${assets[index].cryptoSymbol}"
                              : "****",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
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
      ),
    );
  }
}
