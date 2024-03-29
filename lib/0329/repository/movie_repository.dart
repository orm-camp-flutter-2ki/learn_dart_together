import 'package:learn_dart_together/0329/model/movie_info.dart';

abstract interface class MovieRepository {

  Future<List<MovieInfo>> getMovieInfoList();

}