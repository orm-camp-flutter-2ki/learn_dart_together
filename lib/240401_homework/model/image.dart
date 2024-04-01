import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_dart_together/240401_homework/model/photo.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required int total,
    required int totalHits,
    required List<Photo> hits,
  }) = _Image;

  factory Image.fromJson(Map<String, Object?> json) => _$ImageFromJson(json);
}
