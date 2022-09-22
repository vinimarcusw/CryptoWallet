// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetResultResponse _$AssetResultResponseFromJson(Map<String, dynamic> json) =>
    AssetResultResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      image: json['image'] as String,
      variation: (json['price_change_percentage_24h'] as num).toDouble(),
      currentPrice: (json['current_price'] as num).toDouble(),
    );

Map<String, dynamic> _$AssetResultResponseToJson(
        AssetResultResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'image': instance.image,
      'variation': instance.variation,
      'currentValue': instance.currentPrice,
    };
