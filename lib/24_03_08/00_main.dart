import '01_cleric.dart';

void main() {
  Cleric cleric = Cleric('홍길동', hp: 50, mp: 10);

  Cleric cleric1 = Cleric('아서스', hp: 50, mp: 5);
  Cleric cleric2 = Cleric('아서스', hp: 35);
  Cleric cleric3 = Cleric('아서스');
  // Cleric cleric4 = Cleric();       => error, name 없기 때문.

  // Cleric 생성자에 required 사용했을 경우   => 'name:' 을 붙여야함
  // Cleric cleric5 = Cleric(name: '아서스', hp: 50, mp: 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.name}, ${cleric.hp}, ${cleric.mp}');
  print('${cleric1.name}, ${cleric1.hp}, ${cleric1.mp}');
  print('${cleric2.name}, ${cleric2.hp}, ${cleric2.mp}');
  print('${cleric3.name}, ${cleric3.hp}, ${cleric3.mp}');
  // print('${cleric4.name}, ${cleric4.hp}, ${cleric4.mp}');
}
