import 'package:learn_dart_together/24_03_07/Hero.dart';
import 'package:learn_dart_together/24_03_07/cleric.dart';

void main() {
  final hero = Hero(name: 'name', hp: 100);
  final cleric1 = Cleric('아서스');
  final cleric2 = Cleric('아서스', hp: 25);
  final cleric3 = Cleric('아서스', mp: 5);
  final cleric4 = Cleric('아서스', hp: 25, mp: 5);

  print('hp : ${cleric1.hp}, mp : ${cleric1.mp}');
  print('hp : ${cleric2.hp}, mp : ${cleric2.mp}');
  print('hp : ${cleric3.hp}, mp : ${cleric3.mp}');
  print('hp : ${cleric4.hp}, mp : ${cleric4.mp}');
}
