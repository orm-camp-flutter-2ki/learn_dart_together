import 'dart:io';

final defaultPath = './lib/tmp/';

void copy(String source, String target) {
  try {
    File(defaultPath +target).writeAsStringSync(File(defaultPath +source).readAsStringSync());
  } catch (e) {
    print('오류 발생: $e');
  }
}

void delete(String source) {
  File(defaultPath + source).delete();
}

void writeWithString(String title, String text) {
  File(defaultPath + title).writeAsStringSync(text);
}

String readAsString(String title) {
  return File(defaultPath + title).readAsStringSync();
}

void main() {
  final title = 'Test.txt';
  writeWithString(title, '테스트 파일이지롱');
  print(readAsString(title));
  copy(title, 'Copied Text');
  print(readAsString('CopiedText'));
}
