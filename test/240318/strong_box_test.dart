import 'package:learn_dart_together/240318/key_type.dart';
import 'package:learn_dart_together/240318/strong_box.dart';
import 'package:test/test.dart';

void main() {
  test('Strong Box Test', () {
    StrongBox<String> a =
        StrongBox<String>(keyType: KeyType.padlock);
    a.put('Secret');

    expect(a.get() == null, true); // get했을 때 null return 테스트

    for (int i = 0; i < 1024; i++) { // padlock은 1024번 사용해야 함
      a.get();
    }
    expect(a.get() == 'Secret', true); // keyPoint가 소진되면 data를 가져옴

    a.put('Bimil');
    expect(a.get() == 'Bimil', true); // put 테스트
  });
}
