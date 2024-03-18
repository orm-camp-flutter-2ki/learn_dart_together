import 'package:test/test.dart';
import 'package:learn_dart_together/240318/strong_box.dart';
import 'package:learn_dart_together/240318/key_type.dart';

void main() {
  test('StrongBox Test', () {
    StrongBox<int> box = StrongBox<int>(KeyType.dial);
    box.put(3);
    expect(box.getMaxCount(), 30000);
  });
}
