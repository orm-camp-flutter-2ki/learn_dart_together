import 'package:learn_dart_together/240329/repository/MovieRepositoryImpl.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';

void main() async {
  MovieRepository repository = MovieRepositoryImpl();

  // PRACTICE1.
  // 데이터 출력.
  final movieList = await repository.getMovieInfoList();
  // Json화. (실패)
  var movieListDto = movieList.map((e) => e.MovieDto.toJson());

  print(movieList);

  // PRACTICE2.
  // 데이터 출력.
  // final movieDetail = await repository.getMovieDetail(77816);
  // print(movieDetail);
}
