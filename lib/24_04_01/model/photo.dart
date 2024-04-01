import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({required String tags, required String imageUrl}) =
      _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}

//  프리즈드를 위한 라이브러리 설치.
//  dart run build_runner build --delete-conflicting-outputs
