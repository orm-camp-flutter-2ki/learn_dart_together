import 'dart:io';

void Copy(String source, String target) {
  try {
    final sourceFile = File(source);
    final targetFile = File(target);
    final contents = sourceFile.readAsStringSync();
    targetFile.writeAsStringSync(contents);
    print('파일복사완료');
  } catch (e) {
    print('복사실패 ${e}');
  }
}
