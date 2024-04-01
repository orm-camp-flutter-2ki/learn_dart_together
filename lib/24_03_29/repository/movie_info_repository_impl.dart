import 'package:learn_dart_together/24_03_29/data_source/movie_api.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_info_repository.dart';

class MovieInfoRepositoryImpl implements MovieInfoRepository {
  final MovieApi _api;

  MovieInfoRepositoryImpl({MovieApi? api}) : _api = api ?? MovieApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {

    final movieInfo = await _api.getMovieInfo();

    return movieInfo;
  }
}
