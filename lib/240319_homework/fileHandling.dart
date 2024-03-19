import 'dart:io';

void main() {
  copy('original.txt', 'copy.txt');
}

void copy(String source, String target) {
  final file = File('lib/240319_homework/$source');
  final copyFile = File('lib/240319_homework/$target');

  file.writeAsStringSync('여기에서내용을바꾸고싶다');
  copyFile.writeAsStringSync(file.readAsStringSync());
}
