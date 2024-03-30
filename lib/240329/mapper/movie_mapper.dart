import '../dto/movie_dto.dart';
import '../model/movie.dart';

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
