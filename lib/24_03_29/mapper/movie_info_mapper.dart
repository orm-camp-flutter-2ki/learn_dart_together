import 'package:learn_dart_together/24_03_29/dto/move_info_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

extension MoveiInfoMapper on ResultsDto {
  MovieInfo toMovieInfo() {
    return MovieInfo(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      genreIds: genreIds ?? [],
      id: id ?? 0,
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? '',
      releaseDate: DateTime.tryParse(releaseDate ?? '1989-05-30') ??
          DateTime(1989),
      title: title ?? '',
      video: video ?? false,
      voteAverage: voteAverage ?? 0,
      voteCount: voteCount ?? 0);
  }
}