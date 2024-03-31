import 'package:learn_dart_together/240329/dto/movie_detail_dto.dart';

import '../dto/movie_dto.dart';
import '../model/movie.dart';
import '../model/movie_detail.dart';

extension ToMovie on MovieDto {
  Movie toMovie() {
    return Movie(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      genreIds: genreIds ?? <num>[],
      id: id ?? -1,
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

extension ToMovieDetail on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      // genreIds: genreIds ?? <num>[],
      // id: id ?? -1,
      // originalLanguage: originalLanguage ?? '',
      // originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      // popularity: popularity ?? -1,
      // posterPath: posterPath ?? '',
      // releaseDate: releaseDate ?? '',
      // title: title ?? '',
      // video: video ?? false,
      // voteAverage: voteAverage ?? -1,
      // voteCount: voteCount ?? -1,
    );
  }
}
