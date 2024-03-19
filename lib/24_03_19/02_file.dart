import 'dart:io';

void copy(String source, String target) {
  final fileSource = File(source);

  final contents = fileSource.readAsStringSync();

  final fileTarget = File(target);
  fileTarget.writeAsStringSync(contents);
}

void main() {
  copy('lib/24_03_19/save.txt', 'lib/24_03_19/save1.txt');
  // createFile();
}
