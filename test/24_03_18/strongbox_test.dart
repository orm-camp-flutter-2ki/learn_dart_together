import 'package:learn_dart_together/24_03_18/strongbox.dart';
import 'package:test/test.dart';

void main() {
  group('금고 테스트 ', () {
    test('put, get 테스트', () {
      final strongBox = StrongBox<int>(KeyType.padlock);
      strongBox.put(5);

      expect(strongBox.get(), equals(null));
    });

    test('맥시멈 테스트', () {
      final strongBox = StrongBox<int>(KeyType.button);
      strongBox.put(10);

      for (int i = 0; i < 10000; i++) {
        strongBox.get();
      }

      expect(strongBox.get(), equals(10));
    });

    test('키 타입별로 테스트', () {
      expect(StrongBox<String>(KeyType.padlock).maxUses, equals(1024));
      expect(StrongBox<String>(KeyType.button).maxUses, equals(10000));
      expect(StrongBox<String>(KeyType.dial).maxUses, equals(30000));
      expect(StrongBox<String>(KeyType.finger).maxUses, equals(1000000));
    });
  });
}
