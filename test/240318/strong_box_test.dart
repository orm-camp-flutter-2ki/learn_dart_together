import 'package:test/test.dart';
import 'package:learn_dart_together/240318/strong_box.dart';

void main() {
  group('StrongBox Tests', () {
    test('padlock key type', () {
      StrongBox strongBox = StrongBox(KeyType.padlock);
      strongBox.put("파이썬");

      for (int i = 0; i < 1024; i++) {
        expect(strongBox.get(), isNull);
      }
      expect(strongBox.get(), equals("파이썬"));
    });

    test('Testing button key type', () {
      StrongBox strongBox = StrongBox(KeyType.button);
      strongBox.put("자바");

      for (int i = 0; i < 10000; i++) {
        expect(strongBox.get(), isNull);
      }
      expect(strongBox.get(), equals("자바"));
    });

    test('Testing dial key type', () {
      StrongBox strongBox = StrongBox(KeyType.dial);
      strongBox.put("다트");

      for (int i = 0; i < 30000; i++) {
        expect(strongBox.get(), isNull);
      }
      expect(strongBox.get(), equals("다트"));
    });

    test('Testing finger key type', () {
      StrongBox strongBox = StrongBox(KeyType.finger);
      strongBox.put("플러터");

      for (int i = 0; i < 1000000; i++) {
        expect(strongBox.get(), isNull);
      }
      expect(strongBox.get(), equals("플러터"));
    });
  });
}
