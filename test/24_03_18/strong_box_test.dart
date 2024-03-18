import 'package:learn_dart_together/24_03_18/key_type.dart';
import 'package:learn_dart_together/24_03_18/strong_box.dart';
import 'package:learn_dart_together/24_03_18/stuff.dart';
import 'package:test/test.dart';

void main() {
  Stuff stuff = Stuff('돈');
  StrongBox box;

  group('KeyType 별 지정 횟수 체크', () {
    test('padlock', () {
      box = StrongBox<Stuff>(stuff: stuff, key: KeyType.padlock);
      //padlock 1024회
      for (var i = 0; i < 1023; i++) {
        box.get();
      }
      //1024회차
      expect(box.get() == null, true);
      //1025회차
      expect(box.get() == null, false);
    });

    test('button', () {
      box = StrongBox<Stuff>(stuff: stuff, key: KeyType.button);
      //button 10,000회
      for (var i = 0; i < 9999; i++) {
        box.get();
      }
      //10000회차
      expect(box.get() == null, true);
      //10001회차
      expect(box.get() == null, false);
    });

    test('dial', () {
      box = StrongBox<Stuff>(stuff: stuff, key: KeyType.dial);
      //dial 30,000회
      for (var i = 0; i < 30000; i++) {
        box.get();
      }
      //30000회차
      expect(box.get() == null, true);
      //30001회차
      expect(box.get() == null, false);
    });

    test('finger', () {
      box = StrongBox<Stuff>(stuff: stuff, key: KeyType.finger);
      //finger 1,000,000회
      for (var i = 0; i < 999999; i++) {
        box.get();
      }

      //1000000회차
      expect(box.get() == null, true);
      //1000001회차
      expect(box.get() == null, false);
    });

    test('once', () {
      box = StrongBox<Stuff>(stuff: stuff, key: KeyType.once);
      //0회차
      expect(box.get() == null, false);
    });
  });

  group('메서드 동작 확인',() {
    test('put 메서드 동작 확인', () {
      Stuff fiveDollars = Stuff('5달러');
      Stuff tenDollars = Stuff('10달러');
      StrongBox moneyBox = StrongBox<Stuff>(stuff: fiveDollars, key: KeyType.once);


      expect(moneyBox.get().toString(), '5달러');
      moneyBox.put(tenDollars);
      expect(moneyBox.get().toString(), '10달러');
    });

    test('get 메서드 동작 확인', () {
      Stuff fiveDollars = Stuff('5달러');
      Stuff tenDollars = Stuff('10달러');
      StrongBox moneyBox = StrongBox<Stuff>(stuff: fiveDollars, key: KeyType.once);

      expect(moneyBox.get() == fiveDollars, true);
      expect(moneyBox.get() == tenDollars, false);
    });
  });
}