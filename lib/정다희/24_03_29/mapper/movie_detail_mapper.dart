import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/model/movieDetail.dart';

import '../dto/MovieDetailDto.dart';

extension ToMovieDetail on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      budget: budget ?? 0,
      homepage: homepage ?? '',
      id: id ?? 0,
      imdbId: imdbId ?? '',
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? '',
      releaseDate: releaseDate ?? '',
      revenue: revenue ?? 0,
      runtime: runtime ?? 0,
      status: status ?? '',
      tagline: tagline ?? '',
      title: title ?? '',
      video: video ?? false,
      voteAverage: voteAverage ?? 0,
      voteCount: voteCount ?? 0,
    );
  }
}
