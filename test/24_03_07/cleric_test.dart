import 'package:learn_dart_together/24_03_07/cleric.dart';
import 'package:test/test.dart';

void main(){
  test('Cleric test',(){
  Cleric cleric = Cleric('name');
  expect(cleric.hp, Cleric.maxMp);
  expect(cleric.hp, Cleric.maxHp);

  cleric.hp = 1;
  cleric.selfAid();
  expect(cleric.hp, Cleric.maxHp);

  });
}
