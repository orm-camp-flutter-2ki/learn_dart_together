import 'package:learn_dart_together/240329/repository/movie_repository_Impl.dart';
import 'package:test/test.dart';

void main() {
  test('movie list test', () async {
    final repository = MovieRepositoryImpl();
    final result = await repository.getMovieInfoList();
    expect(result.first.id, 1011985);
    expect(result.length, 20);
  });
  test('movie id search test', () async {
    final repository = MovieRepositoryImpl();
    final result = await repository.getMovie(1011985);
    print(result);
    expect(result.id, 1011985);
  });
}
