import 'package:learn_dart_together/0329/dto/production_company_dto.dart';
import 'package:learn_dart_together/0329/dto/production_country_dto.dart';
import 'package:learn_dart_together/0329/dto/spoken_language_dto.dart';

import 'belongs_to_collection_dto.dart';

class MovieDetailDto {

  final bool? adult;
  final String? backdropPath;
  final BelongsToCollectionDto? belongsToCollection;
  final num? budget;
  final List<dynamic>? genres;
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

  const MovieDetailDto({
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

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdropPath': backdropPath,
      'belongsToCollection': belongsToCollection,
      'budget': budget,
      'genres': genres,
      'homepage': homepage,
      'id': id,
      'imdbId': imdbId,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'posterPath': posterPath,
      'productionCompanies': productionCompanies,
      'productionCountries': productionCountries,
      'releaseDate': releaseDate,
      'revenue': revenue,
      'runtime': runtime,
      'spokenLanguages': spokenLanguages,
      'status': status,
      'tagline': tagline,
      'title': title,
      'video': video,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
    };
  }

  factory MovieDetailDto.fromJson(Map<String, dynamic> map) {
    return MovieDetailDto(
      adult: map['adult'],
      backdropPath: map['backdropPath'],
      belongsToCollection: map['belongsToCollection'],
      budget: map['budget'],
      genres: map['genres'],
      homepage: map['homepage'],
      id: map['id'],
      imdbId: map['imdbId'],
      originalLanguage: map['originalLanguage'],
      originalTitle: map['originalTitle'],
      overview: map['overview'],
      popularity: map['popularity'],
      posterPath: map['posterPath'],
      productionCompanies:
          map['productionCompanies'],
      productionCountries:
          map['productionCountries'],
      releaseDate: map['releaseDate'],
      revenue: map['revenue'],
      runtime: map['runtime'],
      spokenLanguages: map['spokenLanguages'],
      status: map['status'],
      tagline: map['tagline'],
      title: map['title'],
      video: map['video'],
      voteAverage: map['voteAverage'],
      voteCount: map['voteCount'],
    );
  }
}