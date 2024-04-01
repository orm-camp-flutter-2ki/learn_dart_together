import 'package:freezed_annotation/freezed_annotation.dart';

part 'imageUrl.freezed.dart';

part 'imageUrl.g.dart';

@freezed
class ImageUrl with _$ImageUrl {
  const factory ImageUrl({
    required String pageUrl,
    required String webformatUrl,
    required String largeImageUrl,
  }) = _ImageUrl;

  factory ImageUrl.fromJson(Map<String, Object?> json) =>
      _$ImageUrlFromJson(json);
}
