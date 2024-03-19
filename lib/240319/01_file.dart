import 'dart:io';

void main() {
  // 파일 열기
  final file = File('lib/240319/save.txt');

  // 파일 읽기, 쓰기
  file.writeAsStringSync('Hello, world!');

  // 파일 이어서 쓰기
  // escape sequence (\n, \\, \', \")
  file.writeAsStringSync('\nHello, dart!', mode: FileMode.append);

  file.writeAsStringSync(
    '''

next line''',
    mode: FileMode.append,
  );

  final text = file.readAsStringSync();
  print(text);
}
