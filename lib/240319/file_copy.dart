import 'dart:io';

void main() {
  final file = File('save.txt');

  file.writeAsStringSync('Hello World');

  //열고 쓰고 읽고 닫는다
  String text = file.readAsStringSync();

  print(text);

}

void copy(String source, String target){
  // final sourceFile = File(source);
  //
  // final text = sourceFile.readAsStringSync();
  //
  // final fileCopy = File(target);
  //
  // fileCopy.writeAsStringSync(text);

  File(source).copySync(target);
}