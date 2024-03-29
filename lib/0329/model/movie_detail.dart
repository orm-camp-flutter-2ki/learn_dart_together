import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetail {
  final String title;
  final num runtime;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  const MovieDetail({
    required this.title,
    required this.runtime,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

  @override
  String toString() {
    return 'MovieDetail{title: $title, runtime: $runtime, releaseDate: $releaseDate, voteAverage: $voteAverage}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetail &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          runtime == other.runtime &&
          releaseDate == other.releaseDate &&
          voteAverage == other.voteAverage;

  @override
  int get hashCode =>
      title.hashCode ^
      runtime.hashCode ^
      releaseDate.hashCode ^
      voteAverage.hashCode;

  MovieDetail copyWith({
    String? title,
    num? runtime,
    String? releaseDate,
    double? voteAverage,
  }) {
    return MovieDetail(
      title: title ?? this.title,
      runtime: runtime ?? this.runtime,
      releaseDate: releaseDate ?? this.releaseDate,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
}
