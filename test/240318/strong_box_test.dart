import 'package:learn_dart_together/240318/strong_box.dart';
import 'package:test/test.dart';

void main() {
  group('StrongBox', () {
    test('padlock test', () {
      StrongBox<int> padlock1 = StrongBox<int>(KeyType.padlock);
      padlock1.put(42);
      expect(padlock1.get(), equals(42));
      padlock1.lock();
      expect(padlock1.get(), isNull);

      StrongBox<int> padlock2 = StrongBox<int>(KeyType.padlock);
      padlock2.put(24);
      for (int i = 0; i < 1024; i++) {
        expect(padlock2.get(), equals(24));
      }
    });

    test('buttonBox test', () {
      StrongBox<String> buttonBox = StrongBox<String>(KeyType.button);
      buttonBox.put('성공');
      for (int i = 0; i < 10000; i++) {
        expect(buttonBox.get(), equals('성공'));
      }
      expect(buttonBox.get(), isNull);
    });

    test('dialBox test', () {
      StrongBox<double> dialBox = StrongBox<double>(KeyType.dial);
      dialBox.put(123);
      for (int i = 0; i < 30000; i++) {
        expect(dialBox.get(), equals(123));
      }
      expect(dialBox.get(), isNull);
    });

    test('fingerBox test', () {
      StrongBox<bool> fingerBox = StrongBox<bool>(KeyType.finger);
      fingerBox.put(true);
      for (int i = 0; i < 1000000; i++) {
        expect(fingerBox.get(), equals(true));
      }
      expect(fingerBox.get(), isNull);
    });
  });
}
