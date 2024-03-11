import 'hero.dart';

class King {
  void callHero(Hero hero) {
    print('용사님, 저희 왕구에 와주셔서 감사합니다.');
    // hp에 직접 접근 불가, setter로 접근
    print('용사님의 이름은 ${hero.name}이고, hp는 ${hero.hp}입니다.');
    // die메소드에 접근 불가
    //hero.die();
  }
}
