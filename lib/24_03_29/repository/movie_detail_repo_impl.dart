import 'package:learn_dart_together/24_03_29/data_source/movie_detail_api.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailApi _api;

  MovieDetailRepositoryImpl(this._api);

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    final movieDetail = await _api.getMovieDetail(id);

    return movieDetail.toMovieDetail();
  }
}
