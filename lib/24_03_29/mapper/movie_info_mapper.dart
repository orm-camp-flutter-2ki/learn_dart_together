import '../dto/movie_info_dto.dart';
import '../model/movie_info.dart';

extension ToMovieInfo on MovieInfoDto {
  MovieInfo toMovieInfo() {
    return MovieInfo(
        adult: adult ?? false,
        backdrop_path: backdropPath ?? '',
        genre_ids: genreIds ?? [0],
        id: id ?? 0,
        original_langauge: originalLanguage ?? '',
        original_title: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? 0,
        poster_path: posterPath ?? '',
        release_date:
            DateTime.tryParse(releaseDate ?? '') ?? DateTime(1981, 12, 19),
        title: title ?? '',
        video: video ?? false,
        vote_average: voteAverage ?? 0,
        vote_count: voteCount ?? 0);
  }
}
