import '../../model/movie_info.dart';
import '../result_dto.dart';

extension Mapper on ResultDto {

  MovieInfo toMovieInfo() {
    return MovieInfo(adult: adult ?? false,
        backdropPath: backdropPath ?? '',
        originalLanguage: originalLanguage ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? 0.0,
        posterPath: posterPath ?? '',
        releaseDate: releaseDate ?? '',
        title: title ?? '',
        video: video ?? false,
        voteAverage: voteAverage ?? 0.0,
        voteCount: voteCount ?? 0);
  }
}