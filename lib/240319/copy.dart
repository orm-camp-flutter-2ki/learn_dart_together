import 'dart:io';

void Copy(String source, String target) {
  try {
    // 파일 경로 저장
    final sourceFile = File(source);
    // 복사할 파일
    final targetFile = File(target);
    // 복사할 파일 경로에 있는 파일 읽어서 내용값에 저장
    final contents = sourceFile.readAsStringSync();
    // 복사할 파일에 파일 내용 적기
    targetFile.writeAsStringSync(contents);
    print('파일복사완료');
  } catch (e) {
    print('복사실패 ${e}');
  }
}
