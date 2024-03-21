import 'dart:io';
import 'dart:math';
import 'package:learn_dart_together/240321/rewrite.dart';
import 'package:test/test.dart';

void main() {
  tearDown(() async {
    // await Future.delayed(Duration(seconds: 10));
    // await File('lib/240321/sample_copy.csv').delete();
  });
  test('한석봉 김석봉 수정', () async {
    //given
    String sol = '1, 홍길동, 30\r\n2, 김석봉, 20';

    //when
    reWrite('lib/240321/sample.csv', 'lib/240321/sample_copy.csv');
    File rewrite = File('lib/240321/sample_copy.csv');
    String data = await rewrite.readAsString();

    //then
    expect(data, sol);
  });
  // test('파일 없음', () async {
  //   //given

  //   //when
  //   reWrite('lib/2403213/1sample.csv', 'lib/240321/sample_copy.csv');
  //   File rewrite = File('lib/240321/sample_copy.csv');
  //   String data = await rewrite.readAsString();

  //   //then
  //   expect(data, returnsNormally);
  // });
}
