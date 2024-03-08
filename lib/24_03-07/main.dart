import 'package:learn_dart_together/02_03_08/sword.dart';
import 'cleric.dart';


void main() {

final cleric = Cleric('마법사1');

print('이름 : ${cleric.name} HP :  ${cleric.hp} MP : ${cleric.mp}  ');

final cleric2 = Cleric('마법사2', hp:40, mp:5);

print('이름 : ${cleric2.name} HP :  ${cleric2.hp} MP : ${cleric2.mp}  ');

final cleric3 = Cleric('마법사3', hp:30);

print('이름 : ${cleric3.name} HP :  ${cleric3.hp} MP : ${cleric3.mp}  ');



}

