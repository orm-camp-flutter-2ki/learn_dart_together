import 'package:learn_dart_together/240321/movie.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240321/movieInfo.dart';

void main() {
  test('director Test', () async {
    // getMovieInfo Future type
    final Movie movie = await getMovieInfo();
    print(movie.director);
    expect(movie.director, equals('George Lucas'));
  });
}
