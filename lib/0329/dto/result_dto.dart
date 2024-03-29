class ResultDto {

  final bool? adult;
  final String? backdropPath;
  final List<dynamic>? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  const ResultDto({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
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

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdropPath': backdropPath,
      'genreIds': genreIds,
      'id': id,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'title': title,
      'video': video,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
    };
  }




  factory ResultDto.fromJson(Map<String, dynamic> map) {
    return ResultDto(
      adult: map['adult'] as bool,
      backdropPath: map['backdrop_path'] as String,
      genreIds: map['genre_ids'] as List<dynamic>,
      id: map['id'] as int,
      originalLanguage: map['original_language'] as String,
      originalTitle: map['original_title'] as String,
      overview: map['overview'] as String,
      popularity: map['popularity'] as double,
      posterPath: map['poster_path'] as String,
      releaseDate: map['release_date'] as String,
      title: map['title'] as String,
      video: map['video'] as bool,
      voteAverage: map['vote_average'] as double,
      voteCount: map['vote_count'] as int,
    );
  }
}