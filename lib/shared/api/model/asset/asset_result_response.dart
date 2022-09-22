import 'package:json_annotation/json_annotation.dart';

part 'asset_result_response.g.dart';

@JsonSerializable()
class AssetResultResponse {
  final String id;
  final String name;
  final String symbol;
  final String image;
  final num variation;
  final num currentPrice;

  AssetResultResponse({
    required this.id,
    required this.name,
    required this.symbol,
    required this.image,
    required this.variation,
    required this.currentPrice,
  });

  factory AssetResultResponse.fromJson(Map<String, dynamic> json) {
    return _$AssetResultResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetResultResponseToJson(this);

  factory AssetResultResponse.fromMap(Map<String, dynamic> map) {
    return AssetResultResponse(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      symbol: map['symbol'] ?? '',
      image: map['image'] ?? '',
      variation: map['variation'] ?? 0.0,
      currentPrice: map['currentPrice'] ?? 0.0,
    );
  }
}
