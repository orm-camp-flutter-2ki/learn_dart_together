import '02_wand.dart';

///문제 1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
///부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.
///마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
///지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
///마법사의 지팡이는 null 일 수 없다.
///마법사의 MP는 0 이상이어야 한다.
///HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

class Wizard {
  String _name;
  int _hp;
  double _mp;
  Wand wand;

  String get name => _name;

  int get hp => _hp;

  double get mp => _mp;

  Wizard(
      {required String name,
      required int hp,
      required double mp,
      required this.wand})
      : _name = name,
        _hp = hp,
        _mp = mp;

  set name(String nameValue) {
    if (nameValue.length < 3) { // 마법사의 이름이 3글자 미만
      throw Exception('마법사의 이름은 null일 수 없고 3문자 이상이어야 합니다.');
    }
    _name = nameValue;
  }

  set mp(double mpValue) {
    if (mpValue < 0) { // 마법사의 MP가 0 미만
      throw Exception('마법사의 MP는 0 이상이어야 합니다.');
    }
    _mp = mpValue;
  }

  set hp(int hpValue) {
    if (hp < 0) {
      hp = 0;
    }
    _hp = hpValue;
  }
}

void main() {
}
