import 'package:learn_dart_together/240318/strong_box/strong_box.dart';
import 'package:test/test.dart';

void main() {
  test('금고가 잘 동작하나?', () {
    // StrongBox box = StrongBox(keyType: KeyType.padlock);
    final box = StrongBox<int>.fromKeyType(KeyType.padlock);

    box.put(10);

    for (int i = 0; i < 1024; i++) {
      expect(box.get() == null, true);
    }

    expect(box.get() == null, false);
  });
}