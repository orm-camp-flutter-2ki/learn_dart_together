class Wand {
  String _name; //이름
  double _power; //마력

  Wand({
    required String name,
    required double power,
  })
      : _name = name,
        _power = power;

  String get name => _name;
  double get power => _power;

  set name(String value) {
    if (value.length < 3 || value == false) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }
  set power(double value) {
    if (value < 0.5 || value > 100 || value == false) {
      throw Exception('지팡이의 마력은 0.5 이상 100 이하 입니다.');
    }
    _power = value;
  }
}



