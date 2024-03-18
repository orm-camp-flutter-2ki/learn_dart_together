import 'package:learn_dart_together/24_03_18/keytype.dart';
import 'package:learn_dart_together/24_03_18/strongbox.dart';
import 'package:test/test.dart';

void main() {
  test('다이얼 박스 test', () {
    StrongBox dialbox = StrongBox(KeyType.dial);
    dialbox.put('dial');

    for (int i = 0; i < 30000; i++) {
      dialbox.get();
    }
    expect(dialbox.get(), 'dial');
  });
}
