import 'dart:io';

void copy(String source, String target) {
  // File(target).writeAsStringSync(File(source).readAsStringSync());

  // 섹시하다
  File(source).copySync(target);
}
