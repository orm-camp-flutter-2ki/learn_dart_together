import 'package:learn_dart_together/240318_homework/strongBox.dart';
import 'package:test/test.dart';

void main() {
  test('스트롱 박스', () {
    StrongBox strongBox = StrongBox(keyValue: KeyType.padlock,);
    strongBox.put('황금');
    for (int i = 0; i < 1025; i++) {
      print('결과 : ${strongBox.tryUnlock()}. 횟수:${strongBox.count}');
    }
    expect(strongBox.get() == '황금', true); // keyPoint가 소진되면 data를 가져옴
    strongBox.put('왕관');
    expect(strongBox.get() == '왕관', true); // put 테스트
  });
}
