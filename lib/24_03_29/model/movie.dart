import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  @JsonKey(name: 'id')
  final num id;

  @JsonKey(name: 'original_title')
  final String title;

  @JsonKey(name: 'overview')
  final String overview;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  String toString() {
    return 'Movie{id: $id, title: $title, overview: $overview}';
  }

  const Movie({
    required this.id,
    required this.title,
    required this.overview,
  });
}
