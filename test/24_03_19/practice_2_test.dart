import 'dart:io';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('파일을 복사하는 함수를 짜시오', () {
    final myFile = File('save.txt');

    final text = myFile.readAsStringSync();
    print(text);


    void copy(String source, String target) {
      final myFile = File(source);
      final text = myFile.readAsStringSync();

      expect(text, 'Hello, world!');

      myFile.writeAsStringSync(text);
    }

  });
}
