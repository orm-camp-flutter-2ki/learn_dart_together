import 'cleric.dart';

void main() {
  final cleric = Cleric('성직자');
  print('이름 ${cleric.name} hp= ${cleric.hp} mp= ${cleric.mp}');

  final cleric1 = Cleric('아서스', hp: 40, mp: 5);
  print('이름 ${cleric1.name} hp= ${cleric1.hp} mp= ${cleric1.mp}');

  final cleric2 = Cleric('아서스2', hp: 35);
  print('이름 ${cleric2.name} hp= ${cleric2.hp} mp= ${cleric2.mp}');

  final cleric3 = Cleric('아서스3');
  print('이름 ${cleric3.name} hp= ${cleric3.hp} mp= ${cleric3.mp}');
}
