import 'package:learn_dart_together/orm_240329/03_data_source/movie_api.dart';
import 'package:learn_dart_together/orm_240329/03_model/movie_info.dart';
import 'package:learn_dart_together/orm_240329/03_repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl(MovieApi? api) : _api = api ?? MovieApi();

  @override
  Future<List<MovieInfo>> getMovieList() async {
    try {
      final List<MovieInfo> movie = await _api.getMovieList();
      // print(movie);
      return movie;
    } catch (e) {
      throw ['error'];
    }
  }
}

// Future<List<Albums>> getAlbums() async {
//   final getalbums = await _api.getAlbums();
//   return getalbums;
// }
// void main() {
//   MovieRepositoryImpl(MovieApi()).getMovie();
// }
