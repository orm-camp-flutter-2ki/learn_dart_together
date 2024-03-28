import 'package:learn_dart_together/Collection_240311//Wand.dart';
import 'package:learn_dart_together/Collection_240311/Wizard.dart';
import 'package:test/test.dart';

void main() {
  test('마법사 생성 이름테스트', (){
    Wand wandA = Wand(name: 'RedStick', power: 3);
    Wizard wizard = Wizard(name: 'name', hp: 50, mp: 10, wand: wandA);

    wizard.name = 'a';
    expect(wizard.name, 'ahtbfvfd');
});
  test('마법사 mp테스트', (){
    Wand wandA = Wand(name: 'RedStick', power: 3);
    Wizard wizard = Wizard(name: 'name', hp: 50, mp: 10, wand: wandA);

    wizard.mp = -4;
    expect(wizard.mp, -3);
  });
}