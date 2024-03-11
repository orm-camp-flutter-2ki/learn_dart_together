import 'package:learn_dart_together/240311/encaps/wand.dart';
import 'package:learn_dart_together/240311/encaps/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizardTest', () {
    Wand wand = Wand('막대기', 10.0);
    //  Wizard(this._name,this._hp, this._mp, this._wand);
    Wizard wizard = Wizard('마법사', 10, 5, wand);

    expect(() => wizard.name = '법사', throwsException);

    expect(() => wizard.wand = null, throwsException);

    wizard.mp = -10;

    expect(wizard.mp, equals(0));

    wizard.hp = -10;

    expect(wizard.hp, equals(0));
  });
}
