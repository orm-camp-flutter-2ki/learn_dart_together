import 'dart:io';
// 연습문제1
// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)

void main() async {
  try {
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
    if (contents.contains('한석봉')) {
      // String replaceName = contents.replaceAll('한석봉', '김석봉');
      // '한석봉'을 '김석봉'으로 바꾸는 작업
      copyFile.writeAsString('''
  1, 홍길동, 30
  2, 김석봉, 20
  ''');
    }
  } catch (e) {
    print('데이터를 가져오는 데 실패했습니다: $e');
  }
}
