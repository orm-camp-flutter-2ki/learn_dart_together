class MovieDTO {
  final bool? adult;
  final String? backdropPath;
  final int? budget;
  final List<dynamic> genres;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final String? status;
  final String? tagline;
  final String? title;
  final double? voteAverage;
  final int? voteCount;

  MovieDTO({
    this.adult,
    this.backdropPath,
    this.budget,
    required this.genres,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieDTO.fromJson(Map<String, dynamic> json) {
    return MovieDTO(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      budget: json['budget'],
      genres: json['genres'],
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
}
