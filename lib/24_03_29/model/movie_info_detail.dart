class MovieInfoDetail {
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;

  const MovieInfoDetail({
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
  });

  @override
  String toString() {
    return 'MovieInfoDetail{originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity}';
  }
}