import 'package:learn_dart_together/24_03_07/cleric.dart';

void main() {

   Cleric cleric = Cleric(name: "홍길동");
   Cleric cleric1 = Cleric(name: "우투리", hp: 100);
   Cleric cleric2 = Cleric(name: "전우치", hp: 100, mp: 5);


   print('===== 클래릭 생성 =====');
   print('나는야 성기사 ${cleric.name}!! 내 체력은 ${cleric.hp}이고, 마력은 ${cleric.mp} 이만큼 있지! 하하');
   print('나는야 성기사 ${cleric1.name}!! 내 체력은 ${cleric1.hp}이고, 마력은 ${cleric1.mp} 이만큼 있지! 하하');
   print('나는야 성기사 ${cleric2.name}!! 내 체력은 ${cleric2.hp}이고, 마력은 ${cleric2.mp} 이만큼 있지! 하하');


   for (int i = 0; i < 3; i++) {
      cleric.selfAid();
      print('===== selfAid() 발동 $i =====');
      print('${cleric.hp}, ${cleric.mp}');
   }

   for (int i = 0; i < 3; i++) {
      print('===== pray() 발동 $i =====');
      int recoveryMp = cleric.pray(1);
      print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
   }
} 
