class Cleric {
  /**
   * 커밋 메시지
   * 클레릭의 기본 속성을 정의했습니다.
   * 클레릭의 능력을 구현했습니다.
   * 클레릭을 문자열로 표현하는 기능을 추가했습니다.
   */
  String name = '메딕';
  int level = 10;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  String suffix;

  Cleric(this.hp, this.mp, this.suffix);

  void selfAid(){
    mp -= 5;
    hp = 50;
  }

}
