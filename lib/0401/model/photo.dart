import 'package:freezed_annotation/freezed_annotation.dart';
part 'photo.freezed.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String tags,
    required String imageUrl,
  }) = _Photo;
}