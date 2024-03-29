import 'package:learn_dart_together/24_03_29/dto/belongs_to_collection_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/genre_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/production_company_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/production_country_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/spoken_language.dart';

class MovieDto {
  final bool? adult;
  final String? backdropPath;
  final BelongsToCollectionDto? belongsToCollection;
  final num? budget;
  final List<GenreDto>? genres;
  final String? homepage;
  final num? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final num? popularity;
  final String? posterPath;
  final List<ProductionCompanyDto>? productionCompanies;
  final List<ProductionCountryDto>? productionCountries;
  final String? releaseDate;
  final num? revenue;
  final num? runtime;
  final List<SpokenLanguageDto>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final num? voteAverage;
  final num? voteCount;

  MovieDto({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        belongsToCollection: BelongsToCollectionDto.fromJson(json['belongs_to_collection']),
        budget: json['budget'],
        genres: (json['genres'] as List).map((e) => GenreDto.fromJson(e)).toList(),
        homepage: json['homepage'],
        id: json['id'],
        imdbId: json['imdb_id'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        popularity: json['popularity'],
        posterPath: json['poster_path'],
        productionCompanies: (json['production_companies'] as List)
            .map((e) => ProductionCompanyDto.fromJson(e))
            .toList(),
        productionCountries: (json['production_countries'] as List)
            .map((e) => ProductionCountryDto.fromJson(e))
            .toList(),
        releaseDate: json['release_date'],
        revenue: json['revenue'],
        runtime: json['runtime'],
        spokenLanguages: (json['spoken_languages'] as List)
            .map((e) => SpokenLanguageDto.fromJson(e))
            .toList(),
        status: json['status'],
        tagline: json['tagline'],
        title: json['title'],
        video: json['video'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['belongs_to_collection'] = belongsToCollection;
    map['budget'] = budget;
    map['genres'] = genres?.map((v) => v.toJson()).toList();
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['production_companies'] =
        productionCompanies?.map((v) => v.toJson()).toList();
    map['production_countries'] =
        productionCountries?.map((v) => v.toJson()).toList();
    map['release_date'] = releaseDate;
    map['revenue'] = revenue;
    map['runtime'] = runtime;
    map['spoken_languages'] = spokenLanguages?.map((v) => v.toJson()).toList();
    map['status'] = status;
    map['tagline'] = tagline;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}

