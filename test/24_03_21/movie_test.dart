import 'package:learn_dart_together/24_03_21/movie.dart';
import 'package:learn_dart_together/24_03_21/movieinfo.dart';
import 'package:test/test.dart';

void main() {
  test('영화감독 불러오기 테스트', () async {
    Movie movie = await getMovieInfo();

    expect(movie.director, equals('George Lucas'));
  });
}