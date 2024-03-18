import '../../240318/strong_box.dart';
import 'package:test/test.dart';

void main() {
  test(
    'padlock test',
    () {
      StrongBox strongbox = StrongBox('money', KeyType.padlock);

      expect(strongbox.get() == null, true);

      for (int i = 0; i < 1024; i++) {
        strongbox.get();
      }
      expect(strongbox.get() == 'money', true);

      strongbox.put('gold');

      expect(strongbox.get() == 'gold', true);

      print(strongbox.get());
    },
  );
  test(
    'button test',
    () {
      StrongBox strongbox = StrongBox('money', KeyType.buttom);

      expect(strongbox.get() == null, true);

      for (int i = 0; i < 10000; i++) {
        strongbox.get();
      }
      expect(strongbox.get() == 'money', true);

      strongbox.put('gold');

      expect(strongbox.get() == 'gold', true);

      print(strongbox.get());
    },
  );
  test(
    'dial test',
    () {
      StrongBox strongbox = StrongBox('money', KeyType.dial);

      expect(strongbox.get() == null, true);

      for (int i = 0; i < 30000; i++) {
        strongbox.get();
      }
      expect(strongbox.get() == 'money', true);

      strongbox.put('gold');

      expect(strongbox.get() == 'gold', true);

      print(strongbox.get());
    },
  );
  test(
    'finger test',
    () {
      StrongBox strongbox = StrongBox('money', KeyType.finger);

      expect(strongbox.get() == null, true);

      for (int i = 0; i < 1000000; i++) {
        strongbox.get();
      }
      expect(strongbox.get() == 'money', true);

      strongbox.put('gold');

      expect(strongbox.get() == 'gold', true);

      print(strongbox.get());
    },
  );
}
