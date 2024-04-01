import 'package:learn_dart_together/240329/model/movie.dart';
import 'package:learn_dart_together/240329/repository/movieRepository.dart';
import 'package:learn_dart_together/240329/repository/movieRepositoryImpl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('practice1,2', () async {
    MovieRepository movieRepository = MovieRepositoryImpl();
    final List<Movie> movieList = await movieRepository.getMovieInfoList();

    expect(movieList[0].id == 1011985, true);
    Movie movie = await movieRepository.getMovie(437342);
    expect(movie.id == 437342, true);
  });
}
