import 'package:collection/collection.dart';

import '../dto/movie_dto.dart';

class Movie {
  String title;
  bool isVideo;
  num voteAverage;
  num id;
  bool adult;
  num budget;
  List<Genre> genres;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  List<ProductionCompany> productionCompanies;
  List<ProductionCountry> productionCountries;
  String releaseDate;
  num runtime;
  List<SpokenLanguage> spokenLanguages;
  String status;

//<editor-fold desc="Data Methods">
  Movie({
    required this.title,
    required this.isVideo,
    required this.voteAverage,
    required this.id,
    required this.adult,
    required this.budget,
    required this.genres,
    required this.originalLanguage,
    required this.originalTitle,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Movie &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          isVideo == other.isVideo &&
          voteAverage == other.voteAverage &&
          id == other.id &&
          adult == other.adult &&
          budget == other.budget &&
          genres == other.genres &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          posterPath == other.posterPath &&
          productionCompanies.equals(other.productionCompanies) &&
          productionCountries.equals(other.productionCountries) &&
          releaseDate == other.releaseDate &&
          runtime == other.runtime &&
          spokenLanguages.equals(other.spokenLanguages) &&
          status == other.status);

  @override
  int get hashCode =>
      title.hashCode ^
      isVideo.hashCode ^
      voteAverage.hashCode ^
      id.hashCode ^
      adult.hashCode ^
      budget.hashCode ^
      genres.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      posterPath.hashCode ^
      productionCompanies.hashCode ^
      productionCountries.hashCode ^
      releaseDate.hashCode ^
      runtime.hashCode ^
      spokenLanguages.hashCode ^
      status.hashCode;

  @override
  String toString() {
    return 'Movie{ title: $title, video: $isVideo, voteAverage: $voteAverage, id: $id, adult: $adult, budget: $budget, genres: $genres, originalLanguage: $originalLanguage, originalTitle: $originalTitle, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status,}';
  }

  Movie copyWith({
    String? title,
    bool? video,
    num? voteAverage,
    num? id,
    bool? adult,
    num? budget,
    List<Genre>? genres,
    String? originalLanguage,
    String? originalTitle,
    String? posterPath,
    List<ProductionCompany>? productionCompanies,
    List<ProductionCountry>? productionCountries,
    String? releaseDate,
    num? runtime,
    List<SpokenLanguage>? spokenLanguages,
    String? status,
  }) {
    return Movie(
      title: title ?? this.title,
      isVideo: video ?? this.isVideo,
      voteAverage: voteAverage ?? this.voteAverage,
      id: id ?? this.id,
      adult: adult ?? this.adult,
      budget: budget ?? this.budget,
      genres: genres ?? this.genres,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      posterPath: posterPath ?? this.posterPath,
      productionCompanies: productionCompanies ?? this.productionCompanies,
      productionCountries: productionCountries ?? this.productionCountries,
      releaseDate: releaseDate ?? this.releaseDate,
      runtime: runtime ?? this.runtime,
      spokenLanguages: spokenLanguages ?? this.spokenLanguages,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'video': isVideo,
      'voteAverage': voteAverage,
      'id': id,
      'adult': adult,
      'budget': budget,
      'genres': genres,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'posterPath': posterPath,
      'productionCompanies': productionCompanies,
      'productionCountries': productionCountries,
      'releaseDate': releaseDate,
      'runtime': runtime,
      'spokenLanguages': spokenLanguages,
      'status': status,
    };
  }

  factory Movie.fromJson(Map<String, dynamic> map) {
    return Movie(
      title: map['title'] as String,
      isVideo: map['video'] as bool,
      voteAverage: map['voteAverage'] as num,
      id: map['id'] as num,
      adult: map['adult'] as bool,
      budget: map['budget'] as num,
      genres: map['genres'] as List<Genre>,
      originalLanguage: map['originalLanguage'] as String,
      originalTitle: map['originalTitle'] as String,
      posterPath: map['posterPath'] as String,
      productionCompanies:
          map['productionCompanies'] as List<ProductionCompany>,
      productionCountries:
          map['productionCountries'] as List<ProductionCountry>,
      releaseDate: map['releaseDate'] as String,
      runtime: map['runtime'] as num,
      spokenLanguages: map['spokenLanguages'] as List<SpokenLanguage>,
      status: map['status'] as String,
    );
  }

//</editor-fold>
}
