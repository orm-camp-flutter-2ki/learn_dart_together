import 'dart:math';

/// 성직자 클레릭 클래스를 만들자.
/// 이름, hp, mp, 최대 hp, 최대 mp가 속성으로 있다.
/// hp,최대 hp는 초기치 정수 50
/// mp,최대 mp는 초기치 정수 10
/// 최대 hp, 최대 mp는 상수
class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  // 셀프에이드 마법. mp를 5 소비하고 hp를 최대로 회복한다.
  // 인수도 리턴값도 없음.
  void selfAid() {
    mp -= 5;
    hp = maxHp;
    if (mp < 0) {
      mp = 0;
    }
  }

  // 기도하기. 자신의 mp를 회복한다. 회복량은 기도한 시간에 랜덤하게 0~2포인트의 보정을 한 양.(3초 기도시 0~5).
  // 최대 mp보다 더 회복하는 것은 불가능.
  // 인수에 기도할 시간(초) 지정, 리턴값은 실제 회복된 mp 양을 반환
  int pray(int second) {
    int prevMp = mp;
    int plusPoint= second * Random().nextInt(3); // 0,1,2 랜덤
    int healPoint = second + plusPoint;
    mp += healPoint;
    if (mp > maxMp) {
      mp = maxMp;
    }
    return mp-prevMp;
  }
}
