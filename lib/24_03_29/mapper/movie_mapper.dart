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
        releaseDate:
            DateTime.tryParse(releaseDate ?? '') ?? DateTime(0, 0, 0, 0, 0, 0));
  }
}
