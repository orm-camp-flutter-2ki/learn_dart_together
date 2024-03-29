class MovieInfo {
  final String title;
  final num id;
  final List<num> genreIds;
  final String overview;
  final bool adult;
  final num popularity;
  final num voteAverage;

//<editor-fold desc="Data Methods">
  const MovieInfo({
    required this.title,
    required this.id,
    required this.genreIds,
    required this.overview,
    required this.adult,
    required this.popularity,
    required this.voteAverage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieInfo &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          id == other.id &&
          genreIds == other.genreIds &&
          overview == other.overview &&
          adult == other.adult &&
          popularity == other.popularity &&
          voteAverage == other.voteAverage);

  @override
  int get hashCode =>
      title.hashCode ^
      id.hashCode ^
      genreIds.hashCode ^
      overview.hashCode ^
      adult.hashCode ^
      popularity.hashCode ^
      voteAverage.hashCode;

  @override
  String toString() {
    return 'Movie{ title: $title, id: $id, genreIds: $genreIds, overview: $overview, adult: $adult, popularity: $popularity, voteAverage: $voteAverage,}';
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'id': id,
      'genre_ids': genreIds,
      'overview': overview,
      'adult': adult,
      'popularity': popularity,
      'vote_average': voteAverage,
    };
  }

  factory MovieInfo.fromJson(Map<String, dynamic> map) {
    return MovieInfo(
      title: map['title'] as String,
      id: map['id'] as int,
      genreIds: map['genre_ids'] as List<num>,
      overview: map['overview'] as String,
      adult: map['adult'] as bool,
      popularity: map['popularity'] as num,
      voteAverage: map['vote_average'] as num,
    );
  }

  MovieInfo copyWith({
    String? title,
    num? id,
    List<num>? genreIds,
    String? overview,
    bool? adult,
    num? popularity,
    num? voteAverage,
  }) {
    return MovieInfo(
      title: title ?? this.title,
      id: id ?? this.id,
      genreIds: genreIds ?? this.genreIds,
      overview: overview ?? this.overview,
      adult: adult ?? this.adult,
      popularity: popularity ?? this.popularity,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
//</editor-fold>
}
