// dynamic, var, name!, late,

class Wand {
  // 늦은 초기화
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  String get name => _name;

  // 지팡이의 반드시 3문자 이상이어야 한다
  set name(String value) {
    if (value.length < 3) {
      throw Exception('지팡이의 반드시 3문자 이상이어야 한다');
    }

    _name = value;
  }

  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  double get power => _power;

  set power(double value) {
    if (0.5 > value || value > 100.0) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 한다.');
    }
    _power = value;
  }
}
