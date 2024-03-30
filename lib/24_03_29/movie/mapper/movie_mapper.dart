import 'package:learn_dart_together/24_03_29/movie/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/movie/model/movie.dart';
import 'package:learn_dart_together/24_03_29/movie/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/movie/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/movie/dto/result_dto.dart';

extension ToMovies on MovieInfoDto {
  List<MovieInfo> toMovies() {
    if (results == null) return [];
    return results!.map((e) => e.toMovieInfo()).toList();
  }
}

extension ToMovieInfo on ResultDto {
  MovieInfo toMovieInfo() {
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

extension ToMovie on MovieDto {
  Movie toMovie() {
    return Movie(
      title: title ?? '',
      isVideo: video ?? false,
      voteAverage: voteAverage ?? -1,
      id: id ?? -1,
      adult: isAdult ?? false,
      budget: budget ?? -1,
      genres: genres ?? [],
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '[]',
      posterPath: posterPath ?? '',
      productionCompanies: productionCompanies ?? [],
      productionCountries: productionCountries ?? [],
      releaseDate: releaseDate ?? '',
      runtime: runtime ?? -1,
      spokenLanguages: spokenLanguages ?? [],
      status: status ?? '',
    );
  }
}
