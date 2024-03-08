import 'hero.dart';
import 'sword.dart';
import 'wizard.dart';

void main() {
  final superMan = Hero(name: '곽슈퍼', hp: 100);
  final antMan = Hero(name: '개미', hp: 70);
  final engel = Wizard(name: '천사힐러', hp: 50);

  final fireSword = Sword(name: '불의 검', damage: 7);
  final waterSword = Sword(name: '물의 검', damage: 5);

  // hero sword 착용
  superMan.sword = fireSword;
  antMan.sword = waterSword;

  // hero sword 해체
  superMan.sword = null;

  // hero attack
  superMan.attack();

  // hero run
  antMan.run();

  // heal
  engel.heal(antMan);

  // static
  // 다른 영역이기 때문에 클래스에서 안보인다고 생각한다.
  // static 말고 toplevel 함수 사용이 낫다

  // static 접근 방법
  // 아무 때나 사용 가능하다.
  // 영웅 인스턴스를 생성하지 않은 상태에서도 사용 가능하다.
  Hero.money;
  // superMan.money; 접근 불가
  Hero.setRandomMoney();
  // print
}
