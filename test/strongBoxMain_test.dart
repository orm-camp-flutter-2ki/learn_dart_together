import 'package:learn_dart_together/24_03_18/strongBox.dart';
import 'package:test/test.dart';

void main() {
  test('strongBoxTest', () {
    StrongBox<String> padlockBox = StrongBox<String>(KeyType.padlock);
    StrongBox<String> buttonBox = StrongBox<String>(KeyType.button);
    StrongBox<String> dialBox = StrongBox<String>(KeyType.dial);
    StrongBox<String> fingerBox = StrongBox<String>(KeyType.finger);

    padlockBox.put('padlock');
    buttonBox.put('button');
    dialBox.put('dial');
    fingerBox.put('finger');

    // 최대 사용 횟수까지 아이템을 얻기
    String? getItemBeforeLimit(StrongBox box) {
      int maxUsage = box.getMaxUsage(); // 최대 사용 횟수 가져오기
      for (int i = 0; i < maxUsage; i++) {
        String? item = box.get();
        if (item != null) {
          return item;
        }
      }
      return null;
    }

    String? padlock = getItemBeforeLimit(padlockBox);
    expect(padlock, 'padlock');
  });
}