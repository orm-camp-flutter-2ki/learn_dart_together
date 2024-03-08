import 'dart:math';

class Cleric {
  static const int maxhp = 50;
  static const int maxmp = 10; //공유자원으로 변경함
  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = Cleric.maxhp, this.mp = maxmp});

  //매개변수(함수나 메서드가 호출될 때 전달되는 값)로 전달된 값을 클래스의 멤버 변수에 할당하기 위해 this 키워드를 사용
  void selfAid() {
    if (mp == maxmp) {
      mp = maxmp - 5;
      hp = maxhp;
    } else if (5 <= mp && mp < 10) {
      mp = mp - 5;
      hp = maxhp;
    } else if (mp < 5) {
      print('mp가 부족합니다.');
    }
  }

  int pray(int second) {
    // 숫자로 값을 반환해야해서 int를 사용함
    int realMp = 0; //기도에 시간에 비례하여 나온 MP
    int randomNumber = Random().nextInt(3);
    realMp = (second + randomNumber);
    if (mp + realMp <= maxmp) {
      mp = realMp + mp;
    } else if (mp + realMp > 10) {
      print('mp가 충분합니다.');
      mp = maxmp;
    }
    return realMp;
  }

}

