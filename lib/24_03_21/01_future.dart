import 'dart:io';

Future<void> changeCsv() async {
  // 파일이 있는지
  // 있다면 한석봉을 찾아 김석봉으로
  // 없으면 예외처리
  try {
    final file = await File('lib/24_03_21/sample.csv').readAsString();
    if (file.contains('한석봉')) {
      String changeText = file.replaceAll('한석봉', '김석봉');
      await File('lib/24_03_21/sample_copy.csv').writeAsString(changeText);
      print('변경이 완료되었습니다.');
    } else {
      print('한석봉을 찾을 수 없습니다.');
    }
  } catch (e) {
    print('지정된 파일을 찾을 수 없습니다.');
  }
}
