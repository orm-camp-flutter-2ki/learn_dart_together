class Cleric { // class 생성
  String name; // field
  int hp;
  int mp;
  final int maxHp = 50; // field, 상수
  final int maxMp = 10;

  // 생성자 : 인스턴스를 만드는 것
  // this. : 나의.name, 나의.hp
  Cleric(this.name, this.hp, this.mp);

  // selfAid 동작 작성
  // mp 5를 소비하여 자신의 hp를 maxHp까지 회복하는 동작
  void selfAid() {
    int aidHeal = 5;
    mp -= aidHeal;
    hp = maxHp;
  }

}