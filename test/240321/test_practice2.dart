import 'package:test/test.dart';
import 'package:learn_dart_together/240321/practice2.dart';
import 'package:learn_dart_together/240321/movie.dart';

void main() async {
  test('getMovieInfo', () async {
    Movie movie = await getMovieInfo();
    print(movie);
    expect(movie.title == "Star Ward", true);
  });
}
