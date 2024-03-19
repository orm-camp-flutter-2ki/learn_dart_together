import 'dart:io';

void copy(String source, String target) {
  var sourceFile = File(source);
  var targetFile = File(target);

  targetFile.writeAsStringSync(sourceFile.readAsStringSync());
}

void main() {
  copy('lib/24_03_19/save1.txt', 'lib/24_03_19/save2.txt');
}