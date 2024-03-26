import 'dart:convert';

import 'package:learn_dart_together/24_03_21/practice_2/api_call.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final String jsonString = '''{
    "title": "Star Wars",
    "director": "George Lucas",
    "year": 1977
  }
  ''';

  test('movie data return', () async {
    // given when
    final movie = await getMovieInfo(jsonString);

    final movieInfo = jsonEncode(movie);

    final decodedMovieInfo = jsonDecode(movieInfo);

    // expect
    expect(decodedMovieInfo['director'] == 'George Lucas', true);
  });
}
