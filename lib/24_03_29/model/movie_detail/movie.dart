import 'package:json_annotation/json_annotation.dart';

import 'belongs_to_collection.dart';
import 'genres.dart';
import 'production_countries.dart';
import 'production_companies.dart';
import 'spokenLanguages.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final bool adult;
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollection belongsToCollection;
  final num budget;
  final List<Genres> genres;
  final String homepage;
  final num id;
  @JsonKey(name: 'imdb_id')
  final String imdbId;
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @JsonKey(name: 'original_title')
  final String originalTitle;
  final String overview;
  final num popularity;
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @JsonKey(name: 'production_companies')
  final List<ProductionCompanies> productionCompanies;
  @JsonKey(name: 'production_countries')
  final List<ProductionCountries> productionCountries;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  final num revenue;
  final num runtime;
  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguages> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  @JsonKey(name: 'vote_average')
  final num voteAverage;
  @JsonKey(name: 'vote_count')
  final num voteCount;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);


}
