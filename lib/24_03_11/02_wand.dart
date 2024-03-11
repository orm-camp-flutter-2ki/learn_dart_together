class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  String get name => _name;

  double get power => _power;

  set name(String nameValue) {
    if (nameValue.length < 3) {
      // 지팡이의 이름이 3글자 미만인 경우
      throw Exception('지팡이의 이름은 null일 수 없고, 3글자 이상이어야 합니다.');
    }
    _name = nameValue;
  }

  set power(double powerValue) {
    if (powerValue < 0.5 || powerValue > 100.0) {
      // 0.5 미만, 100.0 초과
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다');
    }
    _power = powerValue;
  }
}
