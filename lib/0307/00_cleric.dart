class Cleric { // class 생성
  String name; // field
  int hp;
  int mp;
  final int maxHp = 50; // field, 상수
  final int maxMp = 10;

  // 생성자 : 인스턴스를 만드는 것
  // this. : 나의.name, 나의.hp
  Cleric(this.name, this.hp, this.mp);

}