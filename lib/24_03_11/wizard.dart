import 'package:learn_dart_together/24_03_11/wand.dart';

// 문제 1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
// 부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.
// 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
// 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
// 마법사의 지팡이는 null 일 수 없다.
// 마법사의 MP는 0 이상 이어야 한다.
// HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

class Wizard {
  String _name;
  Wand _wand;
  double _mp;
  int _hp;

  Wizard({
    required String name,
    int hp = 0,
    double mp = 0,
    required Wand wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;


  /// 생성자에다 바로 타당성 검증을 하는 방법
  // Wizard({required this.name, this.wand, this.mp = 0, this.hp = 0}) {
  //   if (name.isEmpty || name.length < 3) {
  //     throw Exception("이름은 3글자 이상 작성해주세요");
  //   }
  //   if (wand == null) {
  //     throw Exception("지팡이는 반드시 있어야 합니다.");
  //   }
  //   if (mp < 0) {
  //     throw Exception("MP는 0 이상이어야 합니다.");
  //   }
  //   if (hp < 0) {
  //     hp = 0; // HP가 음수가 되는 경우 0으로 설정
  //   }
  // }


  set name(String name) {
    print('Wizard name :  $name');

    if (name.isEmpty || name.length < 3) {
      throw Exception('이름은 3글자 이상 작성해주세요');
    }
    _name = name;
  }

  set mp(double mp) {
    print('Wizard mp :  $mp');
    if (mp < 0) {
      throw Exception('! 마력은 0 이상이여야 합니다.');
    }
    _mp = mp;
  }

  set hp(int hp) {
    print('Wizard hp :  $hp');
    if (hp < 0) {
      _hp = 0;
    }
  }

  int get hp => _hp;


}
