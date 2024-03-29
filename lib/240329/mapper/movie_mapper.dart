import '../dto/movie_dto.dart';
import '../model/movie.dart';

extension ToMovie on ResultsDto {
  Movie toMovie() {
    return Movie(
      id: id ?? 0,
      originalTitle: originalTitle ?? '',
      title: title ?? '',
      releaseDate: releaseDate ?? '',
      adult: adult ?? false,
    );
  }
}
