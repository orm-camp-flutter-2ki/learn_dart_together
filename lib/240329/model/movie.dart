import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final bool adult;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollection belongsToCollection;
  final num budget;
  final List<Genre> genres;
  final String homepage;
  final int id;

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
  final List<ProductionCompany> productionCompanies;
  @JsonKey(name: 'production_countries')
  final List<ProductionCountry> productionCountries;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  final num revenue;
  final num runtime;

  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguage> spokenLanguages;
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
    required this.voteCount
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Movie &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          belongsToCollection == other.belongsToCollection &&
          budget == other.budget &&
          genres.equals(genres) &&
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
          voteCount == other.voteCount);

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      belongsToCollection.hashCode ^
      budget.hashCode ^
      genres.hashCode ^
      homepage.hashCode ^
      id.hashCode ^
      imdbId.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      productionCompanies.hashCode ^
      productionCountries.hashCode ^
      releaseDate.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      spokenLanguages.hashCode ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;

  @override
  String toString() {
    return 'Movie{adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }

  Movie copyWith({
    bool? adult,
    String? backdropPath,
    BelongsToCollection? belongsToCollection,
    num? budget,
    List<Genre>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    List<ProductionCompany>? productionCompanies,
    List<ProductionCountry>? productionCountries,
    String? releaseDate,
    num? revenue,
    num? runtime,
    List<SpokenLanguage>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    num? voteAverage,
    num? voteCount
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      belongsToCollection: belongsToCollection ?? this.belongsToCollection,
      budget: budget ?? this.budget,
      genres: genres ?? this.genres,
      homepage: homepage ?? this.homepage,
      id: id ?? this.id,
      imdbId: imdbId ?? this.imdbId,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      productionCompanies: productionCompanies ?? this.productionCompanies,
      productionCountries: productionCountries ?? this.productionCountries,
      releaseDate: releaseDate ?? this.releaseDate,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      spokenLanguages: spokenLanguages ?? this.spokenLanguages,
      status: status ?? this.status,
      tagline: tagline ?? this.tagline,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SpokenLanguage {
  @JsonKey(name: 'english_name')
  final String englishName;
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  final String name;

  SpokenLanguage({
    required this.englishName,
    required this.iso6391,
    required this.name
  });

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpokenLanguage &&
          runtimeType == other.runtimeType &&
          englishName == other.englishName &&
          iso6391 == other.iso6391 &&
          name == other.name);

  @override
  int get hashCode => englishName.hashCode ^ iso6391.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'SpokenLanguage{englishName: $englishName, iso6391: $iso6391, name: $name}';
  }

  SpokenLanguage copyWith({
    String? englishName,
    String? iso6391,
    String? name
  }) {
    return SpokenLanguage(
      englishName: englishName ?? this.englishName,
      iso6391: iso6391 ?? this.iso6391,
      name: name ?? this.name
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductionCountry {
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  final String name;

  ProductionCountry({
    required this.iso31661,
    required this.name
  });

  factory ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductionCountry &&
          runtimeType == other.runtimeType &&
          iso31661 == other.iso31661 &&
          name == other.name);

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'ProductionCountry{iso31661: $iso31661, name: $name}';
  }

  ProductionCountry copyWith({
    String? iso31661,
    String? name
  }) {
    return ProductionCountry(
      iso31661: iso31661 ?? this.iso31661,
      name: name ?? this.name
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductionCompany {
  final int id;

  @JsonKey(name: 'logo_path')
  final String logoPath;
  final String name;

  @JsonKey(name: 'origin_country')
  final String originCountry;

  ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry
  });

  factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductionCompany &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name &&
          originCountry == other.originCountry);

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;

  @override
  String toString() {
    return 'ProductionCompany{id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry}';
  }

  ProductionCompany copyWith({
    int? id,
    String? logoPath,
    String? name,
    String? originCountry
  }) {
    return ProductionCompany(
      id: id ?? this.id,
      logoPath: logoPath ?? this.logoPath,
      name: name ?? this.name,
      originCountry: originCountry ?? this.originCountry
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Genre {
  final int id;
  final String name;

  Genre({
    required this.id,
    required this.name
  });

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Genre &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name);

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'Genre{id: $id, name: $name}';
  }

  Genre copyWith({
    int? id,
    String? name
  }) {
    return Genre(
      id: id ?? this.id,
      name: name ?? this.name
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BelongsToCollection {
  final int id;
  final String name;

  @JsonKey(name: 'poster_path')
  final String posterPath;
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  BelongsToCollection({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath
  });

  factory BelongsToCollection.fromJson(Map<String, dynamic> json) => _$BelongsToCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$BelongsToCollectionToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BelongsToCollection &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          posterPath == other.posterPath &&
          backdropPath == other.backdropPath);

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ posterPath.hashCode ^ backdropPath.hashCode;

  @override
  String toString() {
    return 'BelongsToCollection{id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath}';
  }

  BelongsToCollection copyWith({
    int? id,
    String? name,
    String? posterPath,
    String? backdropPath
  }) {
    return BelongsToCollection(
      id: id ?? this.id,
      name: name ?? this.name,
      posterPath: posterPath ?? this.posterPath,
      backdropPath: backdropPath ?? this.backdropPath
    );
  }
}