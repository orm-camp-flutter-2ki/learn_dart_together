import 'dart:io';

void copy(String source, String target) {
  final File file = File(source);
  final File copyFile = File(target);

  final String content = file.readAsStringSync();
  copyFile.writeAsStringSync(content);
}
