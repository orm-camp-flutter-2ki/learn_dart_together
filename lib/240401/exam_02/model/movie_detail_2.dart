import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_2.freezed.dart';

part 'movie_detail_2.g.dart';

@freezed
class MovieDetail2 with _$MovieDetail2 {
  const factory MovieDetail2({
    required String title,
    @Default(false) bool isCompleted,
  }) = _MovieDetail2;

  factory MovieDetail2.fromJson(Map<String, Object?> json) => _$MovieDetail2FromJson(json);
}