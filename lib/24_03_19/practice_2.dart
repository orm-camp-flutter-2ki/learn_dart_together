import 'dart:io';

void main() {
  final myFile = File('save.txt');

  final text = myFile.readAsStringSync();
  print(text);
}

void copy(String source, String target) {
  final myFile = File(source);
  final text = myFile.readAsStringSync();
  myFile.writeAsStringSync(text);
}
