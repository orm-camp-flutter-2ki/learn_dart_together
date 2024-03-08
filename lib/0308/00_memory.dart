import 'hero.dart';
import 'sword.dart';
import 'wizard.dart';

void main() {
  final superMan = Hero(name: '곽슈퍼', hp: 100);
  final antMan = Hero(name: '개미', hp: 70);
  final engel = Wizard(name: '천사힐러', hp: 50);

  final fireSword = Sword(name: '불의 검', damage: 7);
  final waterSword = Sword(name: '물의 검', damage: 5);

  // sword 착용
  superMan.sword = fireSword;
  antMan.sword = waterSword;

  // sword 해체
  superMan.sword = null;

  // heal
  engel.heal(antMan);
}
