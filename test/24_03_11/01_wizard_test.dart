import 'package:learn_dart_together/24_03_11/01_wizard.dart';
import 'package:learn_dart_together/24_03_11/02_wand.dart';
import 'package:test/test.dart';


void main() {
  test('Wizard test', (){
    Wand wand = Wand(name: 'Wanded', power: 13.0);
    Wizard wizard = Wizard(name: 'Great Wizard', hp: 50, mp: 10, wand: wand);

    expect(wizard.name, '오');
    wizard.mp = 13;
    wizard.hp = -1;
    expect(wizard.hp, 3);
  });


}
