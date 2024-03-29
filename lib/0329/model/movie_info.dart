class MovieInfo {

  final bool adult;
  final String backdropPath;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

//<editor-fold desc="Data Methods">
  const MovieInfo({
    required this.adult,
    required this.backdropPath,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieInfo &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          releaseDate == other.releaseDate &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount);

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      releaseDate.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;

  @override
  String toString() {
    return 'MovieInfo{' +
        ' adult: $adult,' +
        ' backdropPath: $backdropPath,' +
        ' originalLanguage: $originalLanguage,' +
        ' originalTitle: $originalTitle,' +
        ' overview: $overview,' +
        ' popularity: $popularity,' +
        ' posterPath: $posterPath,' +
        ' releaseDate: $releaseDate,' +
        ' title: $title,' +
        ' video: $video,' +
        ' voteAverage: $voteAverage,' +
        ' voteCount: $voteCount,' +
        '}';
  }

  MovieInfo copyWith({
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return MovieInfo(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
//</editor-fold>
}