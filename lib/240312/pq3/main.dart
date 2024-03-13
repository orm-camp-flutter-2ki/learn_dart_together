import 'hero.dart';
import 'sword.dart';
import 'slime.dart';
import 'poison_slime.dart';

void main() {
  print('===sword 생성===');
  Sword sword = Sword(name: '후르츠 대거', damage: 30); // Sword 객체 생성
  print('name:${sword.name}, damage:${sword.damage}');

  print('===hero 생성===');
  Hero hero = Hero(name: '비트코인1억', hp: 100, sword: sword); // Hero 객체 생성 및 sword 매개변수로 전달
  print('name:${hero.name}, hp:${hero.hp}, sword:${sword.name}');

  print('===Poisson Slime 생성===');
  PoisonSlime poisonSlime = PoisonSlime('A');
  print('name:${poisonSlime.suffix}, hp:${poisonSlime.hp}, sword:${poisonSlime.ableAttackCnt}');

  // hero 체력 상태
  int stateHeroHp = 0;

  // for (int i=1; i<5; i++) {
  //   stateHeroHp = hero.hp;
  //
  //   poisonSlime.attack(hero);
  //   print('${hero.name}의 체력 : $stateHeroHp -> ${hero.hp}');
  // }

  while (true) {

    stateHeroHp = hero.hp;
    poisonSlime.attack(hero);
    print('${hero.name}의 체력 : $stateHeroHp -> ${hero.hp}');

    if (hero.hp <= 0) {
      print('${hero.name}은(는) 전사하였습니다.');
      break;
    }

  }
}