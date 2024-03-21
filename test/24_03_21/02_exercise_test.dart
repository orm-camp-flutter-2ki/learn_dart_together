import 'dart:convert';

import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_21/02_exercise.dart';
import 'package:test/test.dart';

void main() {
  group('Movie 클래스 테스트', () {
    setUp(() {});

    tearDown(() => null);

    test('시간 측정', () async {
      Stopwatch stopwatch = Stopwatch()..start();
      await getMovieInfo();

      final time = stopwatch.elapsed;
      expect(time > Duration(seconds: 2), true);
    });
    test('movie 내용 확인', () {
      final String jsonString = '''{
  "title": "Star Ward",
"director": "George-Lucas" ,
"year": 1977
}''';
      Movie movie = Movie.fromJson(jsonDecode(jsonString));
      expect(movie.director, "George-Lucas");
    });
  });
}
