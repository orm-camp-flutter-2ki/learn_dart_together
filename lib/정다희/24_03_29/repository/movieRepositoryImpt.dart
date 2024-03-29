import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/dto/MovieDto.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/mapper/movie_mapper.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/model/movie.dart';

import '../data_source/movie_api.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();
}

// 영화정보를 가져와서 모델에 담고 json 형태로 출력하기
class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;
  MovieRepositoryImpl(this._api);
  @override
  Future<List<Movie>> getMovieInfoList() async {
    final List<MovieDto> res = await _api.getMovie();
    return res.map((e) => e.toMovie()).toList();
  }
}
