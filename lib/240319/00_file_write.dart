import 'dart:io';

void main() async {
  final file = File('save.txt');

  // 열고 쓰거나 읽고 닫는다
  // file.writeAsStringSync('Hello World');
  await file.writeAsString('contents');

  // escape 시퀀스 (\n, \\, \', \")
  file.writeAsStringSync('\nHello \t\'World\' 2222',
      mode: FileMode.append); // 0.1

  file.writeAsStringSync(
    '''\nHello   'World' 2222''',
    mode: FileMode.append,
  );
}
