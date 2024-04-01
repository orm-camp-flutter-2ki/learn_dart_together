import 'package:freezed_annotation/freezed_annotation.dart'; //모델 데이타 클래스

part 'photo.freezed.dart';

// part 'photo.g.dart'; 이거 지우기;

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String tags, //네임드파라미터
    required String imageUrl,
  }) = _Photo;

// factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json); 이것도 지우기
}
