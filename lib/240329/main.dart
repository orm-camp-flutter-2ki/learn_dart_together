import 'package:learn_dart_together/240329/repository/MovieRepositoryImpl.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';

void main() async {
  MovieRepository repository = MovieRepositoryImpl();

  final movieList = await repository.getMovieInfoList();
  print(movieList);
}
