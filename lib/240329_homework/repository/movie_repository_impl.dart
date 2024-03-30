import 'package:learn_dart_together/240329_homework/data_source/movie_api.dart';
import 'package:learn_dart_together/240329_homework/dto/movieDetail_dto.dart';
import 'package:learn_dart_together/240329_homework/mapper/movieDetail_mapper.dart';
import 'package:learn_dart_together/240329_homework/model/movieDetail.dart';
import 'package:learn_dart_together/240329_homework/model/movieInfo.dart';

import '../data_source/movieInfo_api.dart';

void main() async {
  MovieRepositoryImpl movie = MovieRepositoryImpl(MovieApi(), MovieDetailApi());
  //print(await movie.getMovieInfoList());
  print(await movie.getMovieDetail(1011985));
}

class MovieRepositoryImpl implements MovieRepository {
  final MovieDetailApi _apiDetail;
  final MovieApi _api;

  MovieRepositoryImpl(this._api, this._apiDetail);

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    List<MovieInfo> modelResult = await _api.getMovieInfoList();
    return modelResult;
  }

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    MovieDetailDto modelResult = await _apiDetail.getMovieDetail(id);
    return modelResult.toMovieDetail();
  }
}

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();

  Future<MovieDetail> getMovieDetail(int id);
}
