//문제 1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에
// 따라 타당성 검사를 추가하시오.
// 부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여
// 프로그램을 중단 시킵니다.
// 1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
// 2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
// 3. 마법사의 지팡이는 null 일 수 없다.
// 4. 마법사의 MP는 0 이상이어야 한다.
// 5. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

//getter
  String get name => _name;

  double get power => _power;

//setter
  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }

  set power(double value) {
    if (value < 0.5 || value > 100) {
      throw Exception('마력은 0.5 보다 크고 100 보다는 작아야합니다');
    }
    _power = value;
  }
}
