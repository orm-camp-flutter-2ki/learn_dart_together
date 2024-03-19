import 'dart:io';

void copy(String source, String target) {
  final originFile = File(source);
  final originContext = originFile.readAsStringSync();

  final copyFile = File(target);
  copyFile.writeAsStringSync(originContext);
}

void main() {
  final fileDirectoryPath = './lib/24_03_19/file_copy/';
  final file = File('${fileDirectoryPath}save.txt');
  file.writeAsStringSync('Hello World, I wanna sleep asap');

  copy(file.path, '${fileDirectoryPath}copyFile');
  copy(file.path, '${fileDirectoryPath}secondCopyFile');
}