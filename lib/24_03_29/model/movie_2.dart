import 'dart:convert';

import 'package:collection/collection.dart';

class Movie {
  final bool adult;
  final String backdropPath;
  final int budget;
  final List<Genre> genres;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final String status;
  final String tagline;
  final String title;
  final double voteAverage;
  final int voteCount;

  const Movie({
    required this.adult,
    required this.backdropPath,
    required this.budget,
    required this.genres,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      budget: json['budget'],
      genres: List<Genre>.from(json['genres'].map((x) => Genre.fromJson(x))),
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      revenue: json['revenue'],
      runtime: json['runtime'],
      status: json['status'],
      tagline: json['tagline'],
      title: json['title'],
      voteAverage: json['vote_average'].toDouble(),
      voteCount: json['vote_count'],
    );
  }

  Movie copyWith({
    bool? adult,
    String? backdropPath,
    int? budget,
    List<Genre>? genres,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    int? revenue,
    int? runtime,
    String? status,
    String? tagline,
    String? title,
    double? voteAverage,
    int? voteCount,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      budget: budget ?? this.budget,
      genres: genres ?? this.genres,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      status: status ?? this.status,
      tagline: tagline ?? this.tagline,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdropPath': backdropPath,
      'budget': budget,
      'genres': genres.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'originalTitle': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'revenue': revenue,
      'runtime': runtime,
      'status': status,
      'tagline': tagline,
      'title': title,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      adult: (map["adult"] ?? false) as bool,
      backdropPath: (map["backdropPath"] ?? '') as String,
      budget: (map["budget"] ?? 0) as int,
      genres: List<Genre>.from(
        ((map['genres'] ?? const <Genre>[]) as List).map<Genre>((x) {
          return Genre.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      originalTitle: (map["originalTitle"] ?? '') as String,
      overview: (map["overview"] ?? '') as String,
      popularity: (map["popularity"] ?? 0.0) as double,
      posterPath: (map["posterPath"] ?? '') as String,
      releaseDate: (map["releaseDate"] ?? '') as String,
      revenue: (map["revenue"] ?? 0) as int,
      runtime: (map["runtime"] ?? 0) as int,
      status: (map["status"] ?? '') as String,
      tagline: (map["tagline"] ?? '') as String,
      title: (map["title"] ?? '') as String,
      voteAverage: (map["voteAverage"] ?? 0.0) as double,
      voteCount: (map["voteCount"] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.budget == budget &&
        listEquals(other.genres, genres) &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.revenue == revenue &&
        other.runtime == runtime &&
        other.status == status &&
        other.tagline == tagline &&
        other.title == title &&
        other.voteAverage == voteAverage &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdropPath.hashCode ^
        budget.hashCode ^
        genres.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        popularity.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        revenue.hashCode ^
        runtime.hashCode ^
        status.hashCode ^
        tagline.hashCode ^
        title.hashCode ^
        voteAverage.hashCode ^
        voteCount.hashCode;
  }
}

class Genre {
  final int id;
  final String name;

  const Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json['id'],
      name: json['name'],
    );
  }

  Genre copyWith({
    int? id,
    String? name,
  }) {
    return Genre(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Genre.fromMap(Map<String, dynamic> map) {
    return Genre(
      id: (map["id"] ?? 0) as int,
      name: (map["name"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'Genre(id: $id, name: $name)';

  @override
  bool operator ==(covariant Genre other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
