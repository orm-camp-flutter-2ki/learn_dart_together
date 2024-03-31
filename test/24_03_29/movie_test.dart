import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_repository.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('practice1,2', () async {
    //Given
    MovieRepository movieRepository = MovieRepositoryImpl();

    //When
    final List<Movie> movieList = await movieRepository.getMovieInfoList();
    Movie movie = await movieRepository.getMovie(437342);

    //Then
    expect(movieList[0].id == 1011985, true);
    expect(movie.id == 437342, true);
  });
}
