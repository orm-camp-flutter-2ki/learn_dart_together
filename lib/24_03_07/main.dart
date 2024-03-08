import 'package:learn_dart_together/24_03_07/Cleric.dart';

void main() {
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  print('===== 전투(피 까임) =====');
  cleric.hp -= 25;
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 1; i < 4; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 1; i < 4; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}
