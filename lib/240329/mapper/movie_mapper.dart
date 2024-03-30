// Dto -> Data Class 변환

import 'package:dart_cli_practice/240329/dto/movie_dto.dart';
import 'package:dart_cli_practice/240329/model/movie.dart';

extension MovieDtoToMovie on MovieDto {
  Movie toMovie() {
    return Movie(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      genreIds: genreIds ?? <num>[],
      id: id != null ? id!.toInt() : -1,
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? -1,
      posterPath: posterPath ?? '',
      releaseDate: releaseDate ?? '',
      title: title ?? '',
      video: video ?? false,
      voteAverage: voteAverage ?? -1,
      voteCount: voteCount ?? -1,
    );
  }
}

extension MovieToMovieDto on Movie {
  MovieDto toMovieDto() {
    return MovieDto(
      adult: adult,
      backdropPath: backdropPath,
      genreIds: genreIds,
      id: id,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}
