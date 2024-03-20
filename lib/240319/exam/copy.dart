import 'dart:io';

void copy(String source, String target) {
  File(target).writeAsStringSync(File(source).readAsStringSync());
}
