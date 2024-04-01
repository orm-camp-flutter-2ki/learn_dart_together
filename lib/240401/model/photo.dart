import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String tags,
    required String imageUrl,
  }) = _Photo;

// Object 기본값으로 만들어짐,, 왜지?

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
