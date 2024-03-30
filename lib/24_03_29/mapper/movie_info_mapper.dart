import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

extension MovieInfoDtoToMovieInfo on MovieInfoDto {
  MovieInfo toMovieInfo() {
    return MovieInfo(
      adult: adult ?? false,
      backdropPath: backdropPath ?? 'unknown',
      genreIds: genreIds ?? [],
      id: id ?? 0,
      originalLanguage: originalLanguage ?? 'unknown',
      originalTitle: originalTitle ?? 'unknown',
      overview: overview ?? 'unknown',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? 'unknown',
      releaseDate: releaseDate ?? 'unknown',
      title: title ?? 'unknown',
      video: video ?? false,
      voteAverage: voteAverage ?? 0,
      voteCount: voteCount ?? 0,
    );
  }
}
