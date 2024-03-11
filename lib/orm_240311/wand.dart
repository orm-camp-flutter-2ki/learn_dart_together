class Wand {
  String _name;
  double _power;

  String get name => _name;

  double get power => _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  set name(String value) {
    if (value.length <= 2) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }

  set power(double value) {
    if (value < 0.5 || value >= 100) {
      throw Exception('마력은 0.5 이상 100 이하야 합니다.');
    }
    _power = value;
  }
}
