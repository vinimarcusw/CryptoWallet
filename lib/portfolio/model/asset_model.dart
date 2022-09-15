import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssetModel {
  double cryptoValue;
  double cryptoTotal;
  String cryptoIcon;
  String cryptoSymbol;
  String cryptoName;

  AssetModel({
    required this.cryptoValue,
    required this.cryptoTotal,
    required this.cryptoIcon,
    required this.cryptoSymbol,
    required this.cryptoName,
  });
}

final assetsList = Provider((ref) => [
      AssetModel(
        cryptoSymbol: "BTC",
        cryptoName: "Bitcoin",
        cryptoValue: 100745.00,
        cryptoTotal: 6557.00,
        cryptoIcon: "BTC.png",
      ),
      AssetModel(
        cryptoSymbol: "ETH",
        cryptoName: "Ethereum",
        cryptoValue: 8262.00,
        cryptoTotal: 7996.00,
        cryptoIcon: "ETH.png",
      ),
      AssetModel(
        cryptoSymbol: "LTC",
        cryptoName: "Litecoin",
        cryptoValue: 307.00,
        cryptoTotal: 245.00,
        cryptoIcon: "LTC.png",
      ),
    ]);
