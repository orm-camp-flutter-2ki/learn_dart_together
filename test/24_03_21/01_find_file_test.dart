import 'dart:io';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  File file = File('lib/24_03_21/sample.csv');
  file.writeAsString('''
  1, 홍길동, 30
  2, 한석봉, 20
  ''');
  file.copySync('lib/24_03_21/sample_copy.csv');
  File copyFile = File('lib/24_03_21/sample_copy.csv');
  copyFile.writeAsString('''
  1, 홍길동, 30
  2, 한석봉, 20
  ''');
  final contents = await copyFile.readAsString();

  test(
      'sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.',
      () {
    //given
    if (contents.contains('한석')) {
      copyFile.writeAsString('''
  1, 홍길동, 30
  2, 김석봉, 20
  ''');
    }
    //when
    //then
    expect(contents.contains('김석봉'), false);
  });
}


