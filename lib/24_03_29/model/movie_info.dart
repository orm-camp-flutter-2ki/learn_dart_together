class MovieInfo {
  bool adult;
  String backdrop_path;
  List<num> genre_ids;
  num id;
  String original_langauge;
  String original_title;
  String overview;
  num popularity;
  String poster_path;
  DateTime release_date;
  String title;
  bool video;
  num vote_average;
  num vote_count;

  MovieInfo(
      {required this.adult,
      required this.backdrop_path,
      required this.genre_ids,
      required this.id,
      required this.original_langauge,
      required this.original_title,
      required this.overview,
      required this.popularity,
      required this.poster_path,
      required this.release_date,
      required this.title,
      required this.video,
      required this.vote_average,
      required this.vote_count});

  @override
  String toString() {
    return 'MovieInfo{adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_langauge: $original_langauge, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieInfo &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdrop_path == other.backdrop_path &&
          genre_ids == other.genre_ids &&
          id == other.id &&
          original_langauge == other.original_langauge &&
          original_title == other.original_title &&
          overview == other.overview &&
          popularity == other.popularity &&
          poster_path == other.poster_path &&
          release_date == other.release_date &&
          title == other.title &&
          video == other.video &&
          vote_average == other.vote_average &&
          vote_count == other.vote_count;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdrop_path.hashCode ^
      genre_ids.hashCode ^
      id.hashCode ^
      original_langauge.hashCode ^
      original_title.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      poster_path.hashCode ^
      release_date.hashCode ^
      title.hashCode ^
      video.hashCode ^
      vote_average.hashCode ^
      vote_count.hashCode;
}
