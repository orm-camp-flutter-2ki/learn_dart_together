import 'package:learn_dart_together/0329/data_source/movie_api.dart';
import 'package:learn_dart_together/0329/dto/mapper/result_mapper.dart';
import 'package:learn_dart_together/0329/dto/movie_dto.dart';
import 'package:learn_dart_together/0329/model/movie_info.dart';
import 'package:learn_dart_together/0329/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {

  final MovieApi _movieApi;

  MovieRepositoryImpl({MovieApi? movieApi}) : _movieApi = movieApi ?? MovieApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    try {
      MovieDto movieDto = await _movieApi.getMovieDto();
      return movieDto.results?.map((e) => e.toMovieInfo()).toList() ?? [];
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}