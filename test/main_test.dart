import 'package:learn_dart_together/24_03_07/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('mainTest', () {
    Cleric cleric = Cleric('홍길동', hp: 50, mp: 10);

    print('===== 클래릭 생성 =====');
    print('${cleric.hp}, ${cleric.mp}');
    expect(cleric.hp, equals(50));
    expect(cleric.mp, equals(10));

    print('===== 전투(피 까임) =====');
    cleric.hp -= 25;
    print('${cleric.hp}, ${cleric.mp}');
    expect(cleric.hp, equals(25));

    for (int i = 1; i < 4; i++) {
      cleric.selfAid();
      print('===== selfAid() 발동 $i =====');
      print('${cleric.hp}, ${cleric.mp}');
    }
    expect(cleric.hp, equals(50));
    expect(cleric.mp, equals(0));

    for (int i = 1; i < 4; i++) {
      print('===== pray() 발동 $i =====');
      int recoveryMp = cleric.pray(5);
      print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
    }
    expect(cleric.hp, equals(50));
    expect(cleric.mp, equals(10));
  });
}
