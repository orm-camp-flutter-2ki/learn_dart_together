import 'dart:convert';

class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  // getter
  String get name => _name;
  double get power => _power;

  // setter
  // 이름은 null일 수 없고, 반드시 3글자 이상으로 설정
  set name(String nameValue) {
    if (nameValue.length < 3) {
      throw Exception('지팡이 이름은 반드시 3글자 이상으로 설정해주세요.');
    }
    _name = nameValue;
  }

  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다
  set power(double powerValue) {
    if (powerValue < 0.5 || powerValue > 100.0) {
      throw Exception('wand의 마력은 5.0 이상 100.0 이하로 설정해주세요.');
    }
    _power = powerValue;
  }
}
