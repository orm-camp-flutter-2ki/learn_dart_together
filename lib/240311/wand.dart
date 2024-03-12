class Wand {
  String _name;
  double _power;

  Wand(this._name, this._power);

  set name(String? value) {
    if (value == null) {
      throw Exception('이름은 null 일 수 없습니다.');
    }

    if (value.length < 3) {
      throw Exception('이름은 반드시 3글자 이상이어야 합니다.');
    }

    _name = value;
  }

  set power(double value) {
    if (value < 0.5 || value > 100.0) {
      throw Exception('지팡이의 마력이 너무 낮거나 높습니다.');
    }

    _power = value;
  }
}
