class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand(this._name, this._power);

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }
    _name = value;
  }

  set power(double value) {
    if (value < 0.5 || value > 100) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
    _power = value;
  }
}
