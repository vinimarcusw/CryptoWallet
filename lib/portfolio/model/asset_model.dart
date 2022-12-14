import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssetModel {
  double cryptoTotal;
  String cryptoIcon;
  String cryptoSymbol;
  String cryptoName;
  List<double> cryptoValues;

  AssetModel({
    required this.cryptoValues,
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
        cryptoTotal: 6557.00,
        cryptoIcon: "BTC.png",
        cryptoValues: [
          102115.00,
          101232.00,
          102847.00,
          109382.00,
          110384.00,
          109432.00,
          99837.00,
          98837.00,
          97837.00,
          101745.00,
          100000.00,
          98837.75,
          102841.00,
          120482.00,
          95032.00,
          101928.00,
          103098.00,
          99268.00,
          113712.00,
          89492.00,
          92791.00,
          10281.00,
          88932.00,
          110941.00,
          120946.00,
          130821.00,
          80673.00,
          85928.00,
          90827.00,
          91931.00,
          93028.00,
          95028.00,
          96829.00,
          99928.00,
          100745.00,
          110321.00,
          100890.00,
          100098.00,
          104091.00,
          99000.00,
          120893.00,
          100000.00,
          79092.00,
          110321.00,
          100890.00,
          100098.00,
          104091.00,
          102948.00,
          108302.00,
          100972.00,
          102719.00,
          99038.00,
          99123.00,
          95098.00,
          98018.00,
          97278.00,
          100673.00,
          96729.00,
          90726.00,
          110931.00,
          108921.00,
          103902.00,
          107190.00,
          108182.00,
          101923.00,
          102092.00,
          100982.00,
          109019.00,
          99037.00,
          94219.00,
          91022.00,
          109019.00,
          110382.00,
          120193.00,
          100382.00,
          120948.00,
          99027.00,
          98032.00,
          97632.00,
          120945.00,
          100345.00,
          101745.00,
          100902.00,
          101039.00,
          102094.00,
          100001.00,
          103091.00,
          109081.00,
          100201.00,
          105901.00,
        ],
      ),
      AssetModel(
        cryptoSymbol: "ETH",
        cryptoName: "Ethereum",
        cryptoTotal: 15720.00,
        cryptoIcon: "ETH.png",
        cryptoValues: [
          101923.00,
          102092.00,
          100982.00,
          109019.00,
          120946.00,
          130821.00,
          80673.00,
          109019.00,
          110382.00,
          120193.00,
          100382.00,
          85928.00,
          90827.00,
          91931.00,
          93028.00,
          95028.00,
          96829.00,
          99928.00,
          100745.00,
          110321.00,
          100890.00,
          100098.00,
          104091.00,
          99000.00,
          120945.00,
          100345.00,
          101745.00,
          100902.00,
          101039.00,
          102094.00,
          100001.00,
          103091.00,
          109081.00,
          100201.00,
          120893.00,
          100000.00,
          79092.00,
          110321.00,
          100890.00,
          100098.00,
          104091.00,
          102948.00,
          102115.00,
          99037.00,
          94219.00,
          91022.00,
          102847.00,
          109382.00,
          101232.00,
          90726.00,
          110931.00,
          108921.00,
          103902.00,
          107190.00,
          108182.00,
          108302.00,
          100972.00,
          110384.00,
          109432.00,
          99837.00,
          98837.00,
          120948.00,
          98837.75,
          102841.00,
          120482.00,
          95032.00,
          101928.00,
          97837.00,
          101745.00,
          100000.00,
          113712.00,
          92791.00,
          10281.00,
          88932.00,
          110941.00,
          102719.00,
          99038.00,
          99123.00,
          95098.00,
          98018.00,
          97278.00,
          100673.00,
          96729.00,
          103098.00,
          99268.00,
          99027.00,
          98032.00,
          97632.00,
          105901.00,
          89492.00,
        ],
      ),
      AssetModel(
        cryptoSymbol: "LTC",
        cryptoName: "Litecoin",
        cryptoTotal: 5749.00,
        cryptoIcon: "LTC.png",
        cryptoValues: [
          130821.00,
          80673.00,
          109019.00,
          110382.00,
          120193.00,
          100382.00,
          85928.00,
          100001.00,
          103091.00,
          109081.00,
          90827.00,
          91931.00,
          109019.00,
          100972.00,
          110384.00,
          109432.00,
          99837.00,
          98837.00,
          120948.00,
          98837.75,
          120946.00,
          96829.00,
          99928.00,
          100745.00,
          110321.00,
          101039.00,
          102094.00,
          100201.00,
          120893.00,
          100000.00,
          120945.00,
          103902.00,
          107190.00,
          108182.00,
          108302.00,
          100345.00,
          101745.00,
          100902.00,
          110321.00,
          100890.00,
          100098.00,
          104091.00,
          102948.00,
          102115.00,
          99037.00,
          94219.00,
          91022.00,
          102847.00,
          109382.00,
          101232.00,
          90726.00,
          110931.00,
          93028.00,
          95028.00,
          101923.00,
          102092.00,
          100982.00,
          108921.00,
          102841.00,
          120482.00,
          95032.00,
          98018.00,
          97278.00,
          100673.00,
          96729.00,
          103098.00,
          99268.00,
          99027.00,
          98032.00,
          97632.00,
          105901.00,
          101928.00,
          97837.00,
          101745.00,
          100000.00,
          113712.00,
          89492.00,
          92791.00,
          10281.00,
          88932.00,
          110941.00,
          102719.00,
          99038.00,
          99123.00,
          95098.00,
          79092.00,
          100890.00,
          100098.00,
          104091.00,
          99000.00,
        ],
      ),
    ]);
