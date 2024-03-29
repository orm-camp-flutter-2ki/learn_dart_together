import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_29/model/belongs_to_collection.dart';
import 'package:learn_dart_together/24_03_29/model/genre.dart';
import 'package:learn_dart_together/24_03_29/model/production_company.dart';
import 'package:learn_dart_together/24_03_29/model/production_country.dart';
import 'package:learn_dart_together/24_03_29/model/spoken_language.dart';

class Movie {
  final bool adult;
  final String backdropPath;
  final BelongsToCollection belongsToCollection;
  final num budget;
  final List<Genre> genres;
  final String homepage;
  final num id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;
  final String posterPath;
  final List<ProductionCompany> productionCompanies;
  final List<ProductionCountry> productionCountries;
  final String releaseDate;
  final num revenue;
  final num runtime;
  final List<SpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final num voteAverage;
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

  @override
  String toString() {
    return 'Movie{adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          belongsToCollection == other.belongsToCollection &&
          budget == other.budget &&
          genres.equals(other.genres) &&
          homepage == other.homepage &&
          id == other.id &&
          imdbId == other.imdbId &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          productionCompanies.equals(other.productionCompanies) &&
          productionCountries.equals(other.productionCountries) &&
          releaseDate == other.releaseDate &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          spokenLanguages.equals(other.spokenLanguages) &&
          status == other.status &&
          tagline == other.tagline &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      belongsToCollection.hashCode ^
      budget.hashCode ^
      genres
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element) ^
      homepage.hashCode ^
      id.hashCode ^
      imdbId.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      productionCompanies
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element) ^
      productionCountries
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element) ^
      releaseDate.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      spokenLanguages
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element) ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;
}
