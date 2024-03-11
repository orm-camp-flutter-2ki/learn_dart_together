import 'hero.dart';

class King {
  void callHero(Hero hero) {
    print('용사님, 저희 왕국에 와주셔서 감사합니다.');
    print('용사님의 이름은${hero.name}이고, hp는 ${hero.hp}입니다.');

    // die는 private, 접근 불가
    // hero.die();
    hero.bye();
  }
}