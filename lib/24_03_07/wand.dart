class Wand {
  String _name;
  double _power;

  Wand(
     this._name,
     this._power,
  );

  double get power => _power;

  set power(double value) {
    if (value < 0.5 || value > 100.0) {
      throw Exception("지팡이 마력 에러메시지");
    }
    _power = value;
  }

  String get name => _name;

  set name(String name) {
    if (name != null) {
      if (name.length < 3) {
        throw Exception("지팡이 이름 에러메시지");
      }
      _name = name;
    }
  }
}
