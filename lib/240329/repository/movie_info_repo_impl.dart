import 'package:learn_dart_together/240329/data_source/movie_info_api.dart';
import 'package:learn_dart_together/240329/model/movie_info.dart';
import 'package:learn_dart_together/240329/repository/movie_info_repo.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieInfoApi _api1 = MovieInfoApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() {
    return _api1.getMovieInfoList();
  }

}

// @override
// Future<MovieDetail> getMovieDetail(int id) async {
//   List<User> movieDetail = getMovieInfoList();
//   return movieDetail;
