// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_assets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllAssetsResponse _$GetAllAssetsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllAssetsResponse(
      (json['results'])
          .map((e) => AssetResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllAssetsResponseToJson(
        GetAllAssetsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
