import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags.freezed.dart';
part 'tags.g.dart'; // JSON 직렬화를 위해 필요합니다.

@freezed
class Tag with _$Tag {
  const factory Tag({
    required String name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
