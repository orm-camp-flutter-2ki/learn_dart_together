import 'dart:io';

class FileControl {
  void copy(String source, String target) {
    final sourceFile = File(source);
    final sourceTarget = File(target);

    sourceTarget.writeAsStringSync(sourceFile.readAsStringSync());
  }
}

void main() {
  FileControl fileControl = FileControl();
  fileControl.copy('lib/240319/test1.txt', 'lib/240319/test2.txt');
}