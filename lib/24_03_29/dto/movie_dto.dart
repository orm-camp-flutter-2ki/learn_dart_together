import 'package:collection/collection.dart';

class MovieDto {
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

  MovieDto.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    belongsToCollection = json['belongs_to_collection'] != null
        ? BelongsToCollectionDto.fromJson(json['belongs_to_collection'])
        : null;
    budget = json['budget'];
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(GenreDto.fromJson(v));
      });
    }
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      productionCompanies = [];
      json['production_companies'].forEach((v) {
        productionCompanies?.add(ProductionCompanyDto.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      productionCountries = [];
      json['production_countries'].forEach((v) {
        productionCountries?.add(ProductionCountryDto.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    if (json['spoken_languages'] != null) {
      spokenLanguages = [];
      json['spoken_languages'].forEach((v) {
        spokenLanguages?.add(SpokenLanguageDto.fromJson(v));
      });
    }
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  bool? adult;
  String? backdropPath;
  BelongsToCollectionDto? belongsToCollection;
  num? budget;
  List<GenreDto>? genres;
  String? homepage;
  num? id;
  String? imdbId;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  List<ProductionCompanyDto>? productionCompanies;
  List<ProductionCountryDto>? productionCountries;
  String? releaseDate;
  num? revenue;
  num? runtime;
  List<SpokenLanguageDto>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    if (belongsToCollection != null) {
      map['belongs_to_collection'] = belongsToCollection?.toJson();
    }
    map['budget'] = budget;
    if (genres != null) {
      map['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    if (productionCompanies != null) {
      map['production_companies'] =
          productionCompanies?.map((v) => v.toJson()).toList();
    }
    if (productionCountries != null) {
      map['production_countries'] =
          productionCountries?.map((v) => v.toJson()).toList();
    }
    map['release_date'] = releaseDate;
    map['revenue'] = revenue;
    map['runtime'] = runtime;
    if (spokenLanguages != null) {
      map['spoken_languages'] =
          spokenLanguages?.map((v) => v.toJson()).toList();
    }
    map['status'] = status;
    map['tagline'] = tagline;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDto &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          belongsToCollection == other.belongsToCollection &&
          budget == other.budget &&
          ListEquality().equals(genres, other.genres) &&
          homepage == other.homepage &&
          id == other.id &&
          imdbId == other.imdbId &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          ListEquality().equals(productionCompanies, other.productionCompanies) &&
          ListEquality().equals(productionCountries, other.productionCountries) &&
          releaseDate == other.releaseDate &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          ListEquality().equals(spokenLanguages, other.spokenLanguages) &&
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
      (genres?? []).fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      homepage.hashCode ^
      id.hashCode ^
      imdbId.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      (productionCompanies?? []).fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      (productionCountries?? []).fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      releaseDate.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      (spokenLanguages?? []).fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;
}

class SpokenLanguageDto {
  SpokenLanguageDto({
    this.englishName,
    this.iso6391,
    this.name,
  });

  SpokenLanguageDto.fromJson(dynamic json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  String? englishName;
  String? iso6391;
  String? name;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = englishName;
    map['iso_639_1'] = iso6391;
    map['name'] = name;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpokenLanguageDto &&
          runtimeType == other.runtimeType &&
          englishName == other.englishName &&
          iso6391 == other.iso6391 &&
          name == other.name;

  @override
  int get hashCode => englishName.hashCode ^ iso6391.hashCode ^ name.hashCode;
}

class ProductionCountryDto {
  ProductionCountryDto({
    this.iso31661,
    this.name,
  });

  ProductionCountryDto.fromJson(dynamic json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  String? iso31661;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = iso31661;
    map['name'] = name;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountryDto &&
          runtimeType == other.runtimeType &&
          iso31661 == other.iso31661 &&
          name == other.name;

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;
}

class ProductionCompanyDto {
  ProductionCompanyDto({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  ProductionCompanyDto.fromJson(dynamic json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }

  num? id;
  String? logoPath;
  String? name;
  String? originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['logo_path'] = logoPath;
    map['name'] = name;
    map['origin_country'] = originCountry;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompanyDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name &&
          originCountry == other.originCountry;

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;
}

class GenreDto {
  GenreDto({
    this.id,
    this.name,
  });

  GenreDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  num? id;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenreDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

class BelongsToCollectionDto {
  BelongsToCollectionDto({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  BelongsToCollectionDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
  }

  num? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['poster_path'] = posterPath;
    map['backdrop_path'] = backdropPath;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BelongsToCollectionDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          posterPath == other.posterPath &&
          backdropPath == other.backdropPath;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ posterPath.hashCode ^ backdropPath.hashCode;
}
