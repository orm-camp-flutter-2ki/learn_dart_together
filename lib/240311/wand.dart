class Wand {
  String _name;
  double _power;

  String get name => _name;
  double get power => _power;

  Wand({
    required name,
    required power,
  })  : _name = name,
        _power = power;

  set name(String nameValue) {
    if (nameValue.length < 3) {
      throw Exception('지팡이의 이름은 null일 수 없고, 반드시 3문자 이상이어야 한다');
    }
    _name = nameValue;
  }

  set power(double powerValue) {
    if (powerValue < 0.5 || powerValue > 100.0) {
      throw Exception('마나의 마력은 0.5 이상 100.0 이하여야 한다.');
    }
    _power = powerValue;
  }
}
