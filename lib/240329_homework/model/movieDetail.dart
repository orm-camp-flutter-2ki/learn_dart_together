class MovieDetail {
  final bool adult;
  final String backdropPath;
  final BelongsToCollection belongsToCollection;
  final num budget;
  final List<Genres> genres;
  final String homepage;
  final num id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;
  final String posterPath;
  final List<ProductionCompanies> productionCompanies;
  final List<ProductionCountries> productionCountries;
  final String releaseDate;
  final num revenue;
  final num runtime;
  final List<SpokenLanguages> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final num voteAverage;
  final num voteCount;

  const MovieDetail({
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

  MovieDetail copyWith({
    bool? adult,
    String? backdropPath,
    BelongsToCollection? belongsToCollection,
    num? budget,
    List<Genres>? genres,
    String? homepage,
    num? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    List<ProductionCompanies>? productionCompanies,
    List<ProductionCountries>? productionCountries,
    String? releaseDate,
    num? revenue,
    num? runtime,
    List<SpokenLanguages>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    num? voteAverage,
    num? voteCount,
  }) {
    return MovieDetail(
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
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetail &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          belongsToCollection == other.belongsToCollection &&
          budget == other.budget &&
          genres == other.genres &&
          homepage == other.homepage &&
          id == other.id &&
          imdbId == other.imdbId &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          productionCompanies == other.productionCompanies &&
          productionCountries == other.productionCountries &&
          releaseDate == other.releaseDate &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          spokenLanguages == other.spokenLanguages &&
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
    return 'MovieDetail{adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }
}

class SpokenLanguages {
  final String englishName;
  final String iso6391;
  final String name;

  const SpokenLanguages({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  SpokenLanguages copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) {
    return SpokenLanguages(
      englishName: englishName ?? this.englishName,
      iso6391: iso6391 ?? this.iso6391,
      name: name ?? this.name,
    );
  }
}

class ProductionCountries {
  final String iso31661;
  final String name;

  const ProductionCountries({
    required this.iso31661,
    required this.name,
  });

  ProductionCountries copyWith({
    String? iso31661,
    String? name,
  }) {
    return ProductionCountries(
      iso31661: iso31661 ?? this.iso31661,
      name: name ?? this.name,
    );
  }

  @override
  String toString() {
    return 'ProductionCountries{iso31661: $iso31661, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountries &&
          runtimeType == other.runtimeType &&
          iso31661 == other.iso31661 &&
          name == other.name;

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;
}

class ProductionCompanies {
  final num id;
  final String logoPath;
  final String name;
  final String originCountry;

  const ProductionCompanies({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  ProductionCompanies copyWith({
    num? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) {
    return ProductionCompanies(
      id: id ?? this.id,
      logoPath: logoPath ?? this.logoPath,
      name: name ?? this.name,
      originCountry: originCountry ?? this.originCountry,
    );
  }

  @override
  String toString() {
    return 'ProductionCompanies{id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompanies &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name &&
          originCountry == other.originCountry;

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;
}

class Genres {
  final num id;
  final String name;

  const Genres({
    required this.id,
    required this.name,
  });

  Genres copyWith({num? id, String? name}) {
    return Genres(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  String toString() {
    return 'Genres{id: $id, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Genres &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

class BelongsToCollection {
  final num id;
  final String name;
  final String posterPath;
  final String backdropPath;

  const BelongsToCollection({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

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

  @override
  String toString() {
    return 'BelongsToCollection{id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath}';
  }

  BelongsToCollection copyWith({
    num? id,
    String? name,
    String? posterPath,
    String? backdropPath,
  }) {
    return BelongsToCollection(
      id: id ?? this.id,
      name: name ?? this.name,
      posterPath: posterPath ?? this.posterPath,
      backdropPath: backdropPath ?? this.backdropPath,
    );
  }
}
