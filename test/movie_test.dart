import 'package:learn_dart_together/24_03_21/get_movie_info.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('movie', () async {
    final movie = await getMovieInfo();
    expect(movie.director, 'George Lucas');
  });
}