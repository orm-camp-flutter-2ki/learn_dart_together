class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power {
    this.name = name;
    this.power = power;
  }

  String get name => _name;

  set name(String valueName) {
    if (valueName.length < 3) {
      throw Exception("이름 3글자 이상 필요.");
    }
    _name = valueName;
  }

  double get power => _power;

  set power(double valuePower) {
    if (valuePower < 0.5 || valuePower > 100.0) {
      throw Exception("마력 0.5 이상 100.0 이하.");
    }
    _power = valuePower;
  }
}
