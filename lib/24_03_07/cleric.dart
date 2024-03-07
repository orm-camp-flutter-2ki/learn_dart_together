/// 성직자 클레릭 클래스를 만들자.
/// 이름, hp, mp, 최대 hp, 최대 mp가 속성으로 있다.
/// hp,최대 hp는 초기치 정수 50
/// mp,최대 mp는 초기치 정수 10
/// 최대 hp, 최대 mp는 상수
class Cleric{
  String name;
  int hp=50;
  int mp =10;
  static const int maxHp=50;
  static const int maxMp=10;

  Cleric(this.name,this.hp,this.mp);
}