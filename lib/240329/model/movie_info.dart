import 'package:json_annotation/json_annotation.dart';

part 'movie_info.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieInfo {
  final bool adult;
  final String backdrop_path;
  final List<int> genre_ids;
  final int id;
  final String original_language;
  final String original_title;
  final String overview;
  final double popularity;
  final String poster_path;
  final String release_date;
  final String title;
  final bool video;
  final double vote_average;
  final int vote_count;

  factory MovieInfo.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieInfoToJson(this);

//<editor-fold desc="Data Methods">
  const MovieInfo({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieInfo &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdrop_path == other.backdrop_path &&
          genre_ids == other.genre_ids &&
          id == other.id &&
          original_language == other.original_language &&
          original_title == other.original_title &&
          overview == other.overview &&
          popularity == other.popularity &&
          poster_path == other.poster_path &&
          release_date == other.release_date &&
          title == other.title &&
          video == other.video &&
          vote_average == other.vote_average &&
          vote_count == other.vote_count);

  @override
  int get hashCode =>
      adult.hashCode ^
      backdrop_path.hashCode ^
      genre_ids.hashCode ^
      id.hashCode ^
      original_language.hashCode ^
      original_title.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      poster_path.hashCode ^
      release_date.hashCode ^
      title.hashCode ^
      video.hashCode ^
      vote_average.hashCode ^
      vote_count.hashCode;

  @override
  String toString() {
    return 'MovieInfo{' +
        ' adult: $adult,' +
        ' backdrop_path: $backdrop_path,' +
        ' genre_ids: $genre_ids,' +
        ' id: $id,' +
        ' original_language: $original_language,' +
        ' original_title: $original_title,' +
        ' overview: $overview,' +
        ' popularity: $popularity,' +
        ' poster_path: $poster_path,' +
        ' release_date: $release_date,' +
        ' title: $title,' +
        ' video: $video,' +
        ' vote_average: $vote_average,' +
        ' vote_count: $vote_count,' +
        '}';
  }

  MovieInfo copyWith({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool? video,
    double? vote_average,
    int? vote_count,
  }) {
    return MovieInfo(
      adult: adult ?? this.adult,
      backdrop_path: backdrop_path ?? this.backdrop_path,
      genre_ids: genre_ids ?? this.genre_ids,
      id: id ?? this.id,
      original_language: original_language ?? this.original_language,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path ?? this.poster_path,
      release_date: release_date ?? this.release_date,
      title: title ?? this.title,
      video: video ?? this.video,
      vote_average: vote_average ?? this.vote_average,
      vote_count: vote_count ?? this.vote_count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adult': this.adult,
      'backdrop_path': this.backdrop_path,
      'genre_ids': this.genre_ids,
      'id': this.id,
      'original_language': this.original_language,
      'original_title': this.original_title,
      'overview': this.overview,
      'popularity': this.popularity,
      'poster_path': this.poster_path,
      'release_date': this.release_date,
      'title': this.title,
      'video': this.video,
      'vote_average': this.vote_average,
      'vote_count': this.vote_count,
    };
  }

  factory MovieInfo.fromMap(Map<String, dynamic> map) {
    return MovieInfo(
      adult: map['adult'] as bool,
      backdrop_path: map['backdrop_path'] as String,
      genre_ids: map['genre_ids'] as List<int>,
      id: map['id'] as int,
      original_language: map['original_language'] as String,
      original_title: map['original_title'] as String,
      overview: map['overview'] as String,
      popularity: map['popularity'] as double,
      poster_path: map['poster_path'] as String,
      release_date: map['release_date'] as String,
      title: map['title'] as String,
      video: map['video'] as bool,
      vote_average: map['vote_average'] as double,
      vote_count: map['vote_count'] as int,
    );
  }

//</editor-fold>
}
