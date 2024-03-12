class Wand {
  String _name;
  double _power;

  Wand({required name, required power})
      : _name = name,
        _power = power;

  String get name => _name;

  double get power => _power;

  set name(String inputName) {
    if (inputName.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = inputName;
  }

  set power(double inputPower) {
    if (inputPower < 0.5 || 100 < inputPower) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
    _power = inputPower;
  }
}
