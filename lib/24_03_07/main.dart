import 'package:learn_dart_together/24_03_07/cleric.dart';

void main() {
   Cleric cleric = Cleric('홍길동', 50, 10);

   print('===== 클래릭 생성 =====');
   print('${cleric.hp}, ${cleric.mp}');

   for (int i = 0; i < 3; i++) {
      cleric.selfAid();
      print('===== selfAid() 발동 $i =====');
      print('${cleric.hp}, ${cleric.mp}');
   }

   for (int i = 0; i < 3; i++) {
      print('===== pray() 발동 $i =====');
      int recoveryMp = cleric.pray(5);
      print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
   }
} 
