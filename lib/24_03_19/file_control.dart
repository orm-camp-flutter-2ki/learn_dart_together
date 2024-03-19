import 'dart:io';

void copy(String source, String target) {
  final originFile = File(source);
  final originContext = originFile.readAsStringSync();

  final copyFile = File(target);
  copyFile.writeAsStringSync(originContext);
}

void main() {
  final file = File('./save.txt');
  file.writeAsStringSync('Hello World, I wanna sleep asap');

  copy(file.path, './copyFile');
  copy(file.path, './secondCopyFile');
}