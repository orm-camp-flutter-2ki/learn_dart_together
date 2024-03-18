import 'package:learn_dart_together/240318/strong_box.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240318/key_type.dart';

void main() {
  test('keyType Test', () {
    StrongBox<String> box = StrongBox(KeyType.padlock);
    box.put('자물쇠');
    box.get();
    expect(box.getMaxCount(), 1024);
  });
}
