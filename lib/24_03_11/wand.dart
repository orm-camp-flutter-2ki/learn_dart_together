class Wand {
  late String _name;
  late double _power;

  Wand({required String name, required double power}) {
    this.name = name;
    this.power = power;
  }

  String get name => _name;

  double get power => _power;

  set name(String name) {
    _name = _checkNameValidity(name);
  }

  set power(double power) {
    _power = _checkPowerValidity(power);
  }

  String _checkNameValidity(String name) {
    if (name.length < 3) _exceptionHandler('이름은 3글자 이상이어야 합니다.');

    return name;
  }

  double _checkPowerValidity(double power) {
    double result = power;
    if (power < 0.5) {
      result = 0.5;
    } else if (power > 100.0) {
      result = 100.0;
    }
    return result;
  }

  void _exceptionHandler(String message) {
    throw Exception(message);
  }
}
