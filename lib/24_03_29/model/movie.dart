class Movie {


  Movie copyWith({
    bool? adult,
    String? backdropPath,
    List<num>? genreIds,
    num? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    num? voteCount,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
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



  final bool adult;
  final String backdropPath;
  final List<num> genreIds;
  final num id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final num voteAverage;
  final num voteCount;


  @override
  String toString() {
    return 'Movie{adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Movie && runtimeType == other.runtimeType &&
              adult == other.adult && backdropPath == other.backdropPath &&
              genreIds == other.genreIds && id == other.id &&
              originalLanguage == other.originalLanguage &&
              originalTitle == other.originalTitle &&
              overview == other.overview && popularity == other.popularity &&
              posterPath == other.posterPath &&
              releaseDate == other.releaseDate && title == other.title &&
              video == other.video && voteAverage == other.voteAverage &&
              voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^ backdropPath.hashCode ^ genreIds.hashCode ^ id
          .hashCode ^ originalLanguage.hashCode ^ originalTitle
          .hashCode ^ overview.hashCode ^ popularity.hashCode ^ posterPath
          .hashCode ^ releaseDate.hashCode ^ title.hashCode ^ video
          .hashCode ^ voteAverage.hashCode ^ voteCount.hashCode;


  const Movie({
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





//6종에서 4개는 model_class에서 만들어 놓고
//tojson과 fromjson을 dto에 하고(json to dart)
//mapper는 dto에서 extension을 정의..
