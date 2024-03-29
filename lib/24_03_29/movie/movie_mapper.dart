import 'package:learn_dart_together/24_03_29/movie/movie_info.dart';
import 'package:learn_dart_together/24_03_29/movie/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/movie/result_dto.dart';

extension ToMovies on MovieInfoDto {
  List<MovieInfo> toMovies() {
    if (results == null) return [];
    return results!.map((e) => e.toMovie()).toList();
  }
}

extension ToMovie on ResultDto {
  MovieInfo toMovie() {
    return MovieInfo(
      title: title ?? '',
      id: id ?? -1,
      genreIds: genreIds ?? [],
      overview: overview ?? '',
      adult: adult ?? false,
      popularity: popularity ?? -1,
      voteAverage: voteAverage ?? -1,
    );
  }
}
