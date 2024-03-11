import '../orm_240311/hero_01.dart';

class King{
  void cllHero(Hero hero) {
    print('용사님, 저희 왕국에 와주셔서 감사합니다.');
    print('용사님의 이름은 ${hero.name}이고, hp는 ${hero.hp}입니다.');
    hero.bye(); //왕 클래스의 문제점 hero.die() -> hero.bye()로 변경
  }
}