import '../dto/movie_dto.dart';
import '../model/movie.dart';

extension MovieDtoToMovie on Results {
  Movie toMovie() {
    return Movie(
        id: id ?? 0,
        title: title ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        voteAverage: voteAverage ?? 0.0,
        releaseDate: DateTime.tryParse(releaseDate??'') ?? DateTime(0, 0, 0, 0, 0, 0));
  }
}

/*
  final int id;
  final String originalTitle;
  final String overview;
  final String title;
  final num voteAverage;
  final DateTime releaseDate;*/


/*bool? adult;
String? backdropPath;
List<num>? genreIds;
num? id;
String? originalLanguage;
String? originalTitle;
String? overview;
num? popularity;
String? posterPath;
String? releaseDate;
String? title;
bool? video;
num? voteAverage;
num? voteCount;*/
