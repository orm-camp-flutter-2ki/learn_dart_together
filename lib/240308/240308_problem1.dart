// Cleric클래스에 관하여, 2가지 수정을 하시오
// 현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 대한 정보를 가지고 있다. 하지만, 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
// 그래서, 최대 HP, 최대 MP의 필드가 공유 되도록
// 필드 선언에 적절한 키워드를 추가하시오

import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

  Cleric(this.name, this.hp, this.mp);

  static const int maxhp = 50;
  static const int maxmp = 10;

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxhp;
    } else {
      mp = mp;
      hp = hp;
    }
  }

  int pray(int t) {
    int mp1 = mp;
    int mp2;
    mp2 = mp + t + Random().nextInt(3);

    if (mp2 >= maxmp) {
      mp2 = maxmp;
    } else {
      mp2 = mp2;
    }
    mp = mp2;

    int x = mp2 - mp1;

    return x;
  }
}
