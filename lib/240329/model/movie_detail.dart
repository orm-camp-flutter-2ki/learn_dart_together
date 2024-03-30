import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetail {
  final bool adult;
  final String backdrop_path;
  final Map<String, dynamic> belongs_to_collection;
  final int budget;
  final List<dynamic> genres;
  final String homepage;
  final int id;
  final String imdb_id;
  final String original_language;
  final String original_title;
  final String overview;
  final double popularity;
  final String poster_path;
  final List<dynamic> production_companies;
  final List<dynamic> production_countries;
  final String release_date;
  final int revenue;
  final int runtime;
  final List<dynamic> spoken_languages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double vote_average;
  final int vote_count;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

//<editor-fold desc="Data Methods">
  const MovieDetail({
    required this.adult,
    required this.backdrop_path,
    required this.belongs_to_collection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdb_id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.production_companies,
    required this.production_countries,
    required this.release_date,
    required this.revenue,
    required this.runtime,
    required this.spoken_languages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieDetail &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdrop_path == other.backdrop_path &&
          belongs_to_collection == other.belongs_to_collection &&
          budget == other.budget &&
          genres == other.genres &&
          homepage == other.homepage &&
          id == other.id &&
          imdb_id == other.imdb_id &&
          original_language == other.original_language &&
          original_title == other.original_title &&
          overview == other.overview &&
          popularity == other.popularity &&
          poster_path == other.poster_path &&
          production_companies == other.production_companies &&
          production_countries == other.production_countries &&
          release_date == other.release_date &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          spoken_languages == other.spoken_languages &&
          status == other.status &&
          tagline == other.tagline &&
          title == other.title &&
          video == other.video &&
          vote_average == other.vote_average &&
          vote_count == other.vote_count);

  @override
  int get hashCode =>
      adult.hashCode ^
      backdrop_path.hashCode ^
      belongs_to_collection.hashCode ^
      budget.hashCode ^
      genres.hashCode ^
      homepage.hashCode ^
      id.hashCode ^
      imdb_id.hashCode ^
      original_language.hashCode ^
      original_title.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      poster_path.hashCode ^
      production_companies.hashCode ^
      production_countries.hashCode ^
      release_date.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      spoken_languages.hashCode ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      vote_average.hashCode ^
      vote_count.hashCode;

  @override
  String toString() {
    return 'MovieDetail{' +
        ' adult: $adult,' +
        ' backdrop_path: $backdrop_path,' +
        ' belongs_to_collection: $belongs_to_collection,' +
        ' budget: $budget,' +
        ' genres: $genres,' +
        ' homepage: $homepage,' +
        ' id: $id,' +
        ' imdb_id: $imdb_id,' +
        ' original_language: $original_language,' +
        ' original_title: $original_title,' +
        ' overview: $overview,' +
        ' popularity: $popularity,' +
        ' poster_path: $poster_path,' +
        ' production_companies: $production_companies,' +
        ' production_countries: $production_countries,' +
        ' release_date: $release_date,' +
        ' revenue: $revenue,' +
        ' runtime: $runtime,' +
        ' spoken_languages: $spoken_languages,' +
        ' status: $status,' +
        ' tagline: $tagline,' +
        ' title: $title,' +
        ' video: $video,' +
        ' vote_average: $vote_average,' +
        ' vote_count: $vote_count,' +
        '}';
  }

  MovieDetail copyWith({
    bool? adult,
    String? backdrop_path,
    Map<String, dynamic>? belongs_to_collection,
    int? budget,
    List<dynamic>? genres,
    String? homepage,
    int? id,
    String? imdb_id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    List<dynamic>? production_companies,
    List<dynamic>? production_countries,
    String? release_date,
    int? revenue,
    int? runtime,
    List<dynamic>? spoken_languages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? vote_average,
    int? vote_count,
  }) {
    return MovieDetail(
      adult: adult ?? this.adult,
      backdrop_path: backdrop_path ?? this.backdrop_path,
      belongs_to_collection:
          belongs_to_collection ?? this.belongs_to_collection,
      budget: budget ?? this.budget,
      genres: genres ?? this.genres,
      homepage: homepage ?? this.homepage,
      id: id ?? this.id,
      imdb_id: imdb_id ?? this.imdb_id,
      original_language: original_language ?? this.original_language,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path ?? this.poster_path,
      production_companies: production_companies ?? this.production_companies,
      production_countries: production_countries ?? this.production_countries,
      release_date: release_date ?? this.release_date,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      spoken_languages: spoken_languages ?? this.spoken_languages,
      status: status ?? this.status,
      tagline: tagline ?? this.tagline,
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
      'belongs_to_collection': this.belongs_to_collection,
      'budget': this.budget,
      'genres': this.genres,
      'homepage': this.homepage,
      'id': this.id,
      'imdb_id': this.imdb_id,
      'original_language': this.original_language,
      'original_title': this.original_title,
      'overview': this.overview,
      'popularity': this.popularity,
      'poster_path': this.poster_path,
      'production_companies': this.production_companies,
      'production_countries': this.production_countries,
      'release_date': this.release_date,
      'revenue': this.revenue,
      'runtime': this.runtime,
      'spoken_languages': this.spoken_languages,
      'status': this.status,
      'tagline': this.tagline,
      'title': this.title,
      'video': this.video,
      'vote_average': this.vote_average,
      'vote_count': this.vote_count,
    };
  }

  factory MovieDetail.fromMap(Map<String, dynamic> map) {
    return MovieDetail(
      adult: map['adult'] as bool,
      backdrop_path: map['backdrop_path'] as String,
      belongs_to_collection:
          map['belongs_to_collection'] as Map<String, dynamic>,
      budget: map['budget'] as int,
      genres: map['genres'] as List<dynamic>,
      homepage: map['homepage'] as String,
      id: map['id'] as int,
      imdb_id: map['imdb_id'] as String,
      original_language: map['original_language'] as String,
      original_title: map['original_title'] as String,
      overview: map['overview'] as String,
      popularity: map['popularity'] as double,
      poster_path: map['poster_path'] as String,
      production_companies: map['production_companies'] as List<dynamic>,
      production_countries: map['production_countries'] as List<dynamic>,
      release_date: map['release_date'] as String,
      revenue: map['revenue'] as int,
      runtime: map['runtime'] as int,
      spoken_languages: map['spoken_languages'] as List<dynamic>,
      status: map['status'] as String,
      tagline: map['tagline'] as String,
      title: map['title'] as String,
      video: map['video'] as bool,
      vote_average: map['vote_average'] as double,
      vote_count: map['vote_count'] as int,
    );
  }

//</editor-fold>
}
