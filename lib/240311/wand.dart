class Wand {
  String _name;
  double _power;

  String get name => _name;

  double get power => _power;

  set name(String name) {
    _name = _nameValidate(name);
  }

  set power(double power) {
    _power = _powerValidate(power);
  }

  String _nameValidate(String name) {
    if (name.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    } else {
      return name;
    }
  }

  double _powerValidate(double power) {
    if (power < 0.5 || power > 100.0) {
      throw Exception('지팡이의 마력은 0.5이상 100이하의 값입니다.');
    } else {
      return power;
    }
  }

  Wand({
    required String name,
    required double power,
  })  : assert(name.length >= 3, '$name의 이름은 3자 이상이어야 합니다.'),
        _name = name,
        assert(0.5 <= power && power <= 100, '지팡이의 마력은 0.5이상 100이하의 값입니다.'),
        _power = power;
}
