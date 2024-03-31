import '../dto/movie_dto.dart';
import '../model/movie.dart';

extension MovieDtoToMovie on MovieDto {
  Movie toMovie(){
    return Movie(
       adult: adult ?? false,
       backdropPath: backdropPath ?? '',
       genreIds: genreIds ?? <num>[],
       id: id != null ? id!.toInt() : -1,
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

extension MovieToMovieDto on Movie {
  MovieDto toMovieDto() {
    return MovieDto(
  backdropPath: backdropPath,
  genreIds: genreIds,
  id: id,
  originalLanguage: originalLanguage,
  originalTitle: originalTitle,
  overview: overview,
  popularity: popularity,
  posterPath: posterPath,
  releaseDate: releaseDate,
  title: title,
  video: video,
  voteAverage: voteAverage,
  voteCount: voteCount,
    );
}
}
