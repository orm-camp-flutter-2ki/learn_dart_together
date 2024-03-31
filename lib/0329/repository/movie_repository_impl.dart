import 'package:learn_dart_together/0329/data_source/movie_api.dart';
import 'package:learn_dart_together/0329/dto/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/0329/dto/mapper/result_mapper.dart';
import 'package:learn_dart_together/0329/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/0329/dto/movie_dto.dart';
import 'package:learn_dart_together/0329/model/movie_info.dart';
import 'package:learn_dart_together/0329/repository/movie_repository.dart';

import '../model/movie_detail.dart';

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

  @override
  Future<MovieDetail> getMovieDetail(int movieId) async {
    try {
      MovieDetailDto movieDetailDto = await _movieApi.getMovieDetailDto(1011985);
      return movieDetailDto.toMovieDetail();
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}