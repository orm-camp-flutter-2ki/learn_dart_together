import 'package:learn_dart_together/24_03_29/datasource/movie_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

abstract interface class MovieRepository {
  MovieApi api;

  MovieRepository(this.api);

  Future<List<MovieInfo>> getMovieInfoList();

  Future<Movie?> getMovie(int id);
}

class MovieRepositoryImpl implements MovieRepository {
  @override
  MovieApi api;

  MovieRepositoryImpl(this.api);

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    List<MovieInfo>? movieInfos;
    try {
      MovieInfoDto movieInfoDto = (await api.getMovieInfoDto());
      if (movieInfoDto.results != null) {
        movieInfos = movieInfoDto.results!.map((e) => e.toMovieInfo()).toList();
      }
    } catch (e) {
      print(e.toString());
    }
    return movieInfos ?? [];
  }

  @override
  Future<Movie?> getMovie(int id) async {
    Movie? movie;
    try {
      MovieDto movieDto = (await api.getMovieDto(id));
      movie = movieDto.toMovie();
    } catch (e) {
      print(e.toString());
    }
    return movie;
  }
}
