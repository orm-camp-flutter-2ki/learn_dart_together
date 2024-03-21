import 'dart:async';
import 'dart:io';

Future<void> main() async {
  //파일 생성
  final File sampleFile = File('sample.csv');
  // 파일 내용 적기
  sampleFile.writeAsString('''1, 홍길동, 30
2, 한석봉, 20''');
  // 파일 복사 및 수정

  await copy('sample.csv', 'sample_copy.csv');
}

Future<void> copy(String source, String target) async {
  try {
    // 파일 경로
    final sourceFile = File(source);
    //  복사할 파일
    final targetFile = File(target);
    // 내용 읽기
    final contents = await sourceFile.readAsString();
    // 내용 수정
    final editContents = contents.replaceAll('한석봉', '김석봉');
    await targetFile.writeAsString(editContents);
    print('파일 수정 완료');
  } catch (e) {
    print('파일 오류 ${e}');
  }
}
