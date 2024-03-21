import 'package:learn_dart_together/240321/movie.dart';
import 'package:test/test.dart';

void main() {
  test('Movie test', () async {
    final movie = Movie('Star Ward', 'George Lucas', 1977);

    final movieInfo = await movie.getMovieInfo();
    print(movieInfo.director);
    expect(movieInfo.director == movie.director, true);
  });
}