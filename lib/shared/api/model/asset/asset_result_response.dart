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
}
