import 'package:learn_dart_together/24_03_21/movie/get_movie_info.dart';
import 'package:learn_dart_together/24_03_21/movie/movie.dart';
import 'package:test/test.dart';

void main() {
  group('getMovieInfo 메서드 테스트', () {
    test('getMovieInfo를 호출하면 Movie 클래스의 dircetor를 출력하면 George Lucas가 나온다',() async {
      Movie movieInfo = await getMovieInfo();

      final expectedResult = 'George Lucas';

      expect(movieInfo.director == expectedResult, true);
    });

    test('getMovieInfo를 호출하면 2초 후 Movie 클래스를 반환한다.',() async {
      Stopwatch stopwatch = Stopwatch()..start();
      Movie movieInfo = await getMovieInfo();
      final finishedTime = stopwatch.elapsed.inSeconds;

      final expectedResult = 2;

      expect(finishedTime >= expectedResult, true);
    });
  });
}