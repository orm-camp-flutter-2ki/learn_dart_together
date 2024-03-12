class Wand {
  String _name;
  double _power;

  Wand({required String name, required double power})
      : _power = power,
        _name = name;

  String get name => _name;

  double get power => _power;

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    } else {
      _name = value;
    }
  }
    set power(double value) {
      if (!(0.5 <= value && value <= 100.0)) {
        throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 한다.');
      }
      _power = power;
    }
  }

