import 'package:learn_dart_together/24_03_29/data_source/movie_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api = MovieApi();

  @override
  Future<List<Movie>> getMovieInfoList() async {
    final List<Results> movieDtoList = await _api.getMovieInfoList();
    return movieDtoList
        .map((e) => e.toMovie())
        .toList();
  }
}
