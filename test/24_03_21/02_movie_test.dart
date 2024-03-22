import 'dart:convert';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 서버에서 들어오는 데이터라고 상상
  final String jsonString = '''{
  "title": "Star Wars",
  "director": "George Lucas",
  "year": 1977}
  ''';


  test('getMovieInfo함수 완성하고 Director 출력하는 문제', () {
    //given
    Map<String, dynamic> decodedJson = jsonDecode(jsonString);

    //when
    final matchName = decodedJson['director'];

    //then
    expect(matchName == 'George Lucas', true);

  });
}