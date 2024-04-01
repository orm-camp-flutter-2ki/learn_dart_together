import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_dart_together/240401/model/hits.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int total,
    required int totalHits,
    required List<Hits> hits,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}
