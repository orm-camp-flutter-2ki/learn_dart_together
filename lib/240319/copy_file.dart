import 'dart:io';

void copy(String source, String target) {
  final File file = File(source);
  final File copyFile = File(target);

  final String content = file.readAsStringSync();
  copyFile.writeAsStringSync(content);
}

void main() {
  copy('lib/240319/save.txt', 'lib/240319/savecopy.txt');
}
