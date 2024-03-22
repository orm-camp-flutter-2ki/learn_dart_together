import 'package:learn_dart_together/0321/main.dart';
import 'package:learn_dart_together/0321/task02.dart';
import 'package:test/test.dart';

void main() {
  test('데이터 처리', () async {
    final String jsonString = '''{
      "title": "Star Ward",
      "director": "George",
      "year": 1977
    }''';
    Movie movieInfo = await getMovieInfo(jsonString);

    expect(movieInfo.director, 'George');
  });
}