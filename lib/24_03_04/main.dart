import 'cleric_class.dart';

void main() {
  //인스턴스 생성
  final Cleric cleric1 = Cleric(name: '용사', hp: 40, mp: 5);
  final Cleric cleric2 = Cleric(name: '법사', hp: 40);
  final Cleric cleric3 = Cleric(name: '전사');

  // 생성 인스턴스로 List 만들기
  List<Cleric> clerics = [cleric1, cleric2, cleric3];

  // List에 있는 각 인스턴스 출력을 위한 반복문
  for (int i = 0; i < clerics.length; i++) {
    Cleric cleric = clerics[i]; // 현 반복에서 처리할 인스턴스

    print('===== 클래릭 ${cleric.name} 생성 =====');
    print('HP: ${cleric.hp}, MP: ${cleric.mp}');

    // selfAid를 호출하여 상태를 확인하는 루프
    for (int i = 0; i < 3; i++) {
      cleric.selfAid();
      print('===== ${cleric.name}의 selfAid() 발동 ${i + 1}번째 =====');
      print('HP: ${cleric.hp}, MP: ${cleric.mp}');
    }

    for (int i = 0; i < 3; i++) {
      print('===== ${cleric.name}의 pray() 발동 ${i + 1}번째 =====');
      int recoveryMp = cleric.pray(5);
      print('HP: ${cleric.hp}, MP: ${cleric.mp}, 회복량: $recoveryMp');
    }

    print(''); // 각 인스턴스 구분해서 가독성 향상 목적
  }
}

/*
분리된 main용 dart 파일
*/