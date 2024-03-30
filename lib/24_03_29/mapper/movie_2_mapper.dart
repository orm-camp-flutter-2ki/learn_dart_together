import '../dto/movie_2_dto.dart';
import '../model/movie_2.dart';

extension MovieDTOExtension on MovieDTO {
  Movie toMovie() {
    return Movie(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      budget: budget ?? 0,
      genres: genres.map((genre) => Genre.fromJson(genre)).toList(),
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? 0.0,
      posterPath: posterPath ?? '',
      releaseDate: releaseDate ?? '',
      revenue: revenue ?? 0,
      runtime: runtime ?? 0,
      status: status ?? '',
      tagline: tagline ?? '',
      title: title ?? '',
      voteAverage: voteAverage ?? 0.0,
      voteCount: voteCount ?? 0,
    );
  }
}
