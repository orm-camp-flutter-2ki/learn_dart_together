import 'package:learn_dart_together/240311/Wand.dart';
import 'package:learn_dart_together/240311/Wizard.dart';
import 'package:test/test.dart';

void main() {
  test('마법사 생성 이름테스트', (){
    Wand wandA = Wand(name: 'RedStick', power: 3);
    Wizard wizard = Wizard('name', 50, 10, wandA);

    wizard.name = 'a';
    expect(wizard.name, 'ahtbfvfd');
});
  test('마법사 mp테스트', (){
    Wand wandA = Wand(name: 'RedStick', power: 3);
    Wizard wizard = Wizard('name', 50, 10, wandA);

    wizard.mp = -4;
    expect(wizard.mp, -3);
  });
}