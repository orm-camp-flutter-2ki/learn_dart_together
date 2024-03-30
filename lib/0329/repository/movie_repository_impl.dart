import 'package:learn_dart_together/0329/data_source/movie_api.dart';
import 'package:learn_dart_together/0329/mapper/movie_info_mapper.dart';
import 'package:learn_dart_together/0329/model/movie_info.dart';

import '../model/movie_detail.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl(this._api);

  @override
  Future<List<MovieInfo>> getMoviesInfoList() async {
    final moviesIngoList = await _api.moviesInfoApi();
    return moviesIngoList.map((e) => e.toMovieInfo()).toList();
  }

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    final movieDetail = await _api.movieDetail(id);
    return movieDetail;
  }
}

void main() async {
  final MovieRepository movieInfo = MovieRepositoryImpl(MovieApi());

  final moviesInfoList = await movieInfo.getMoviesInfoList();
  moviesInfoList.forEach((print));

  final movieDetail = await movieInfo.getMovieDetail(634492);
  print(movieDetail.toString());
}
