class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand(this._name, this._power);

  // String get name => _name; // _name 변수의 값을 반환하는 getter 메서드
  // double get power => _power; // _name 변수의 값을 반환하는 getter 메서드

  set name(String value) {
    if (value.length < 3) {
      throw Exception('완드 이름은 반드시 3글자 이상이어야 합니다.');
    }
    _name = value;
  }

  // double get power => _power;

  set power(double value) {
    if (value < 0.5 || value > 100) {
      throw Exception('완드 마력은 반드시 0.5 이상 100.0 이하여야 합니다.');
    }
    _power = value;
  }
}