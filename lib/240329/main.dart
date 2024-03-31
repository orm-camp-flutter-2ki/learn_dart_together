import 'package:learn_dart_together/240329/repository/MovieRepositoryImpl.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';

void main() async {
  MovieRepository repository = MovieRepositoryImpl();

  // // PRACTICE1.
  // final movieList = await repository.getMovieInfoList();
  // print(movieList);

  // PRACTICE2.
  final movieDetail = await repository.getMovieDetail(77816);
  print(movieDetail);
}
