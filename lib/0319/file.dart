import 'dart:io';

void copy(String source, String target) {
  final sourceFile = File(source);

  try {
    final sourceText = sourceFile.readAsStringSync();
    File(target).writeAsStringSync(sourceText);

  } on PathNotFoundException {
    print('파일을 찾을 수 없습니다.');

  } catch (e, s) {
    print(e.toString());
    print(s.toString());
  }
}
