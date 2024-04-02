import 'package:freezed_annotation/freezed_annotation.dart';

part 'hits.freezed.dart';
part 'hits.g.dart';

@freezed
class Hits with _$Hits {
  const factory Hits({
    required String tags,
    required String imageURL,
  }) = _Hits;

  factory Hits.fromJson(Map<String, Object?> json) => _$HitsFromJson(json);
}
