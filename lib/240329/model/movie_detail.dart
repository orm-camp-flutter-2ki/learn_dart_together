class MovieDetail {
  final bool adult;
  final String backdropPath;

  // final List belongsToCollection;
  // final num budget;
  // final List genres;
  // final String homepage;
  // final num id;
  // final String imdbId;
  // final String originalLanguage;
  // final String originalTitle;
  final String overview;

  const MovieDetail({
    required this.adult,
    required this.backdropPath,
    required this.overview,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetail &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          overview == other.overview;

  @override
  int get hashCode =>
      adult.hashCode ^ backdropPath.hashCode ^ overview.hashCode;

  @override
  String toString() {
    return 'MovieDetail{adult: $adult, backdropPath: $backdropPath, overview: $overview}';
  }
}
