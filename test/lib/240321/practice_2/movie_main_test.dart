import 'package:learn_dart_together/240321/practice_2/movie.dart';
import 'package:learn_dart_together/240321/practice_2/get_movie_info.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final String jsonString = '''{
    "title": "Star Ward",
    "director": "George Lucas",
    "year": 1977
  }''';

  test('director가 누구인지 출력하시오', () async {

    // When
    Movie data = await getMovieInfo(jsonString);

    String expectedResult = 'George Lucas';

    // Then
    expect(data.director, expectedResult);
  });
}