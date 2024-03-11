
void main(){

  //A
  Cleric clericA = Cleric('아서스',hp: 40,mp:5);
  //B
  Cleric clericB = Cleric('아서스',hp: 35);
  //C
  Cleric clericC = Cleric('아서스');
  //D
  Cleric clericD = Cleric('아서스',mp:5);

  print('clericA : ${clericA.hp},${clericA.mp}');
  print('clericB : ${clericB.hp},${clericB.mp}');
  print('clericC : ${clericC.hp},${clericC.mp}');
  print('clericD : ${clericD.hp},${clericD.mp}');
}

class Cleric {
  //왜 상수여야 하며, final은 안되는가?
  //static에 항상 const가 있어야 하는것도 아니고 생성자에 귀속되는 값이 아니다.
  //그러나 생성자에 hpMax 값을 필요로 한다.
  //생성자는 runtime에 실행 된다. => default 값이 필요. 따라서 static const 로 선언해준다.

  static const int mpMax = 10;
  static const int hpMax = 50;

  String name;
  int hp = 50;
  int mp = 10;

  //A
  // Cleric(this.name, this.hp, this.mp);
  //B
  // Cleric(this.name, this.hp,{this.mp = Cleric.mpMax});
  //C
  // Cleric(this.name, {this.hp = Cleric.hpMax, this.mp = Cleric.mpMax});
  //D
  Cleric(this.name,{this.hp = Cleric.hpMax, this.mp = Cleric.mpMax});

}