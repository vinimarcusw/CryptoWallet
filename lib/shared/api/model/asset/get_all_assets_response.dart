import 'package:crypto_wallet/shared/api/model/asset/asset_result_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_assets_response.g.dart';

@JsonSerializable()
class GetAllAssetsResponse {
  final List<AssetResultResponse> assets;

  GetAllAssetsResponse(this.assets);

  factory GetAllAssetsResponse.fromJson(Map<String, dynamic> json) {
    return _$GetAllAssetsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllAssetsResponseToJson(this);
}
