import 'package:learn_dart_together/24_03_18/strong_box.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('인스턴스 타입 미정', () {
    // given
    StrongBox box = StrongBox(keyType: KeyType.padlock);

    // when
    box.put('a');

    for (int i = 0; i < 1024; i++) {
      box.get();
    }

    // then
    expect(box.get(), 'a');
  });
}
