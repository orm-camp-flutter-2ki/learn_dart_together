import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture.freezed.dart';

part 'picture.g.dart';

@freezed
class Picture with _$Picture {
  const factory Picture({
    required String tags,
    required String imageUrl
  }) = _Picture;
  
  factory Picture.fromJson(Map<String, Object?> json) => _$PictureFromJson(json); 
}