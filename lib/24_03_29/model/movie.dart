import 'package:collection/collection.dart';

class Movie {
  final bool adult;
  final String backdropPath;
  final BelongsToCollection? belongsToCollection;
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

  Movie.copyWith({
    required Movie origin,
    bool? adult,
    String? backdropPath,
    BelongsToCollection? belongsToCollection,
    num? budget,
    List<Genre>? genres,
    String? homepage,
    num? id,
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
    num? voteCount,
  }) : adult = adult ?? origin.adult,
        backdropPath = backdropPath ?? origin.backdropPath,
        belongsToCollection = belongsToCollection ?? origin.belongsToCollection,
        budget = budget ?? origin.budget,
        genres = genres ?? origin.genres,
        homepage = homepage ?? origin.homepage,
        id = id ?? origin.id,
        imdbId = imdbId ?? origin.imdbId,
        originalLanguage = originalLanguage ?? origin.originalLanguage,
        originalTitle = originalTitle ?? origin.originalTitle,
        overview = overview ?? origin.overview,
        popularity = popularity ?? origin.popularity,
        posterPath = posterPath ?? origin.posterPath,
        productionCompanies = productionCompanies ?? origin.productionCompanies,
        productionCountries = productionCountries ?? origin.productionCountries,
        releaseDate = releaseDate ?? origin.releaseDate,
        revenue = revenue ?? origin.revenue,
        runtime = runtime ?? origin.runtime,
        spokenLanguages = spokenLanguages ?? origin.spokenLanguages,
        status = status ?? origin.status,
        tagline = tagline ?? origin.tagline,
        title = title ?? origin.title,
        video = video ?? origin.video,
        voteAverage = voteAverage ?? origin.voteAverage,
        voteCount = voteCount ?? origin.voteCount;

  Movie.fromJson(Map<String, dynamic> json)
      : adult = json['adult'],
        backdropPath = json['backdropPath'],
        belongsToCollection = BelongsToCollection.fromJson(json['belongsToCollection']),
        budget = json['budget'],
        genres = (json['genres'] as List).map((e) => Genre.fromJson(e)).toList(),
        homepage = json['homepage'],
        id = json['id'],
        imdbId = json['imdbId'],
        originalLanguage = json['originalLanguage'],
        originalTitle = json['originalTitle'],
        overview = json['overview'],
        popularity = json['popularity'],
        posterPath = json['posterPath'],
        productionCompanies = (json['productionCompanies'] as List).map((e) => ProductionCompany.fromJson(e)).toList(),
        productionCountries = (json['productionCountries'] as List).map((e) => ProductionCountry.fromJson(e)).toList(),
        releaseDate = json['releaseDate'],
        revenue = json['revenue'],
        runtime = json['runtime'],
        spokenLanguages = (json['spokenLanguages'] as List).map((e) => SpokenLanguage.fromJson(e)).toList(),
        status = json['status'],
        tagline = json['tagline'],
        title = json['title'],
        video = json['video'],
        voteAverage = json['voteAverage'],
        voteCount = json['voteCount'];

  Map<String, dynamic> toJson() => {
    'adult': adult,
    'backdropPath': backdropPath,
    'belongsToCollection': belongsToCollection,
    'budget': budget,
    'genres': genres.map((e) => e.toJson()).toList(),
    'homepage': homepage,
    'id': id,
    'imdbId': imdbId,
    'originalLanguage': originalLanguage,
    'originalTitle': originalTitle,
    'overview': overview,
    'popularity': popularity,
    'posterPath': posterPath,
    'productionCompanies': productionCompanies.map((e) => e.toJson()).toList(),
    'productionCountries': productionCountries.map((e) => e.toJson()).toList(),
    'releaseDate': releaseDate,
    'revenue': revenue,
    'runtime': runtime,
    'spokenLanguages': spokenLanguages.map((e) => e.toJson()).toList(),
    'status': status,
    'tagline': tagline,
    'title': title,
    'video': video,
    'voteAverage': voteAverage,
    'voteCount': voteCount
  };

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
              ListEquality().equals(genres, other.genres) &&
              homepage == other.homepage &&
              id == other.id &&
              imdbId == other.imdbId &&
              originalLanguage == other.originalLanguage &&
              originalTitle == other.originalTitle &&
              overview == other.overview &&
              popularity == other.popularity &&
              posterPath == other.posterPath &&
              ListEquality().equals(productionCountries, other.productionCountries) &&
              ListEquality().equals(productionCompanies, other.productionCompanies) &&
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
      genres.fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      homepage.hashCode ^
      id.hashCode ^
      imdbId.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      productionCompanies.fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      productionCountries.fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      releaseDate.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      spokenLanguages.fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;
}

class Genre {
  final num id;
  final String name;

  Genre({
    required this.id,
    required this.name,
  });

  Genre.copyWith({
    required Genre origin,
    num? id,
    String? name,
  })  : id = id ?? origin.id,
        name = name ?? origin.name;

  Genre.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  String toString() {
    return 'Genre{id: $id, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Genre &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

class ProductionCountry {
  final String iso31661;
  final String name;

  ProductionCountry({
    required this.iso31661,
    required this.name,
  });

  ProductionCountry.copyWith({
    required ProductionCountry origin,
    String? iso31661,
    String? name,
  })  : iso31661 = iso31661 ?? origin.iso31661,
        name = name ?? origin.name;

  ProductionCountry.fromJson(Map<String, dynamic> json)
      : iso31661 = json['iso31661'],
        name = json['name'];

  Map<String, dynamic> toJson() => {'iso31661': iso31661, 'name': name};

  @override
  String toString() {
    return 'ProductionCountry{iso31661: $iso31661, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountry &&
          runtimeType == other.runtimeType &&
          iso31661 == other.iso31661 &&
          name == other.name;

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;
}

class ProductionCompany {
  final num id;
  final String logoPath;
  final String name;
  final String originCountry;

  ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  ProductionCompany.copyWith({
    required ProductionCompany origin,
    num? id,
    String? logoPath,
    String? name,
    String? originCountry,
  })  : id = id ?? origin.id,
        logoPath = logoPath ?? origin.logoPath,
        name = name ?? origin.name,
        originCountry = originCountry ?? origin.originCountry;

  ProductionCompany.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        logoPath = json['logoPath'],
        name = json['name'],
        originCountry = json['originCountry'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'logoPath': logoPath,
        'name': name,
        'originCountry': originCountry
      };

  @override
  String toString() {
    return 'ProductionCompany{id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompany &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name &&
          originCountry == other.originCountry;

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;
}

class SpokenLanguage {
  final String englishName;
  final String iso6391;
  final String name;

  SpokenLanguage({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  SpokenLanguage.copyWith({
    required SpokenLanguage origin,
    String? englishName,
    String? iso6391,
    String? name,
  })  : englishName = englishName ?? origin.englishName,
        iso6391 = iso6391 ?? origin.iso6391,
        name = name ?? origin.name;

  SpokenLanguage.fromJson(Map<String, dynamic> json)
      : englishName = json['englishName'],
        iso6391 = json['iso6391'],
        name = json['name'];

  Map<String, dynamic> toJson() =>
      {'englishName': englishName, 'iso6391': iso6391, 'name': name};

  @override
  String toString() {
    return 'SpokenLanguage{englishName: $englishName, iso6391: $iso6391, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpokenLanguage &&
          runtimeType == other.runtimeType &&
          englishName == other.englishName &&
          iso6391 == other.iso6391 &&
          name == other.name;

  @override
  int get hashCode => englishName.hashCode ^ iso6391.hashCode ^ name.hashCode;
}

class BelongsToCollection {
  final num id;
  final String name;
  final String posterPath;
  final String backdropPath;

  BelongsToCollection({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  BelongsToCollection.copyWith({
    required BelongsToCollection origin,
    num? id,
    String? name,
    String? posterPath,
    String? backdropPath,
  })  : id = id ?? origin.id,
        name = name ?? origin.name,
        posterPath = posterPath ?? origin.posterPath,
        backdropPath = backdropPath ?? origin.backdropPath;

  BelongsToCollection.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        posterPath = json['posterPath'],
        backdropPath = json['backdropPath'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'posterPath': posterPath,
        'backdropPath': backdropPath
      };

  @override
  String toString() {
    return 'BelongsToCollection{id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BelongsToCollection &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          posterPath == other.posterPath &&
          backdropPath == other.backdropPath;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ posterPath.hashCode ^ backdropPath.hashCode;
}
