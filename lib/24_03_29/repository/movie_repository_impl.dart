import 'package:learn_dart_together/24_03_29/data_source/movie_api.dart';
import 'package:learn_dart_together/24_03_29/data_source/movie_detail_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api = MovieApi();
  final MovieDetailApi _detailApi = MovieDetailApi();

  @override
  Future<List<Movie>> getMovieInfoList() async {
    final List<Results> movieDtoList = await _api.getMovieInfoList();
    return movieDtoList.map((e) => e.toMovie()).toList();
  }

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    final movieById = await _detailApi.getMovieDetail(id);
    return movieById.toMovieDetail();
  }
}
