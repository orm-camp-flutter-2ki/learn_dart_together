import 'dart:io';

Future<void> main() async {
  await copy('source', 'target');
}

Future<void> copy(String source, String target) async {
  try {
    // 파일 경로
    final sourceFile = File(source);
    //  복사할 파일
    final targetFile = File(target);
    // 내용 읽기
    final String contents = await sourceFile.readAsString();

    // 내용 수정
    final editContents = contents.replaceAll('한석봉', '김석봉');
    targetFile.writeAsString(editContents);
    print('파일 수정 완료');
  } catch (e) {
    print('파일 오류 ${e}');
  }
}