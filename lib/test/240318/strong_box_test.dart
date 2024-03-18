import 'package:learn_dart_together/240318/key_type.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240318/strong_box.dart';

void main() {
  test('StrongBox Test', () {
    StrongBox<String> box = StrongBox<String>(KeyType.padlock);
    box.put('padlock');
    expect(box.get(), equals('padlock'));
    // expect(box.get(), equals(null));
  });
}
