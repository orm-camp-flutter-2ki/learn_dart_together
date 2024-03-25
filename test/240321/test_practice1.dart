import 'dart:io';

import 'package:test/test.dart';
import 'package:learn_dart_together/240321/practice1.dart';

void main() async {
  setUp(() {
    File('sample.csv').writeAsStringSync('''
    1, 홍길동, 30
    2, 한석봉, 20 
    ''');
  });

  // 매 test 끝날때 실행할 부분
  tearDown(() {
    //File('sample.csv').deleteSync();
    //File('sample_copy.csv').deleteSync();
  });

  test('practice1', () async {
    await replaceHanToKim('sample.csv');
    String result = await File('sample_copy.csv').readAsString();
    expect(result.contains('김석봉'), true);
  });
}
