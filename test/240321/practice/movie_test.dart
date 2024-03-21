import 'dart:convert';
import 'dart:io';

import 'package:dart_cli_practice/240321/practice/handle_json_data.dart';
import 'package:dart_cli_practice/240321/practice/movie.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  String path = 'lib/240321/practice/MOCK_DATA.json';

  test('json에서 생성한 객체를 직렬화한 것과 원본 json 문자열은 동일하다.', () async {
    final Movie movieInfo = await getMovieInfo(path);

    String actualData = jsonEncode(movieInfo);
    String expectData = File(path).readAsStringSync();
    
    expect(actualData, equals(expectData));
  });
}