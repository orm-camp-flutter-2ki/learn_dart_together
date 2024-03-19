import 'dart:io';

void copy(String source, String target) {
  final sourceFile = File(source);
  final text = sourceFile.readAsStringSync();
  final targetFile = File(target);
  targetFile.writeAsStringSync(text);
}


// import 'dart:io';
//
// void copy(String source, String target) {
//   final sourceFile = File(source);
//   final text = sourceFile.readAsStringSync();
//   final targetFile = File(target);
//   targetFile.writeAsStringSync(text);
// }