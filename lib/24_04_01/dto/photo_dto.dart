import 'package:json_annotation/json_annotation.dart';
part 'photo_dto.g.dart';

@JsonSerializable()
class PhotoDTO {
  final String tags; // 사진 TAG
  final String webformatURL; // 사진 URL

  PhotoDTO({required this.tags, required this.webformatURL});

  // Json to DTO
  factory PhotoDTO.fromJson(Map<String, dynamic> json) =>
      _$PhotoDTOFromJson(json);
  // DTO to Json
  Map<String, dynamic> toJson() => _$PhotoDTOToJson(this);
}
