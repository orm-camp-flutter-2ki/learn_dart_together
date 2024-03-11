class Wand {
  late final String _name;
  late final double _power;

  Wand({required String name, required double power}) {
    _name = _checkNameValidity(name);
    _power = _checkPowerValidity(power);
  }

  String get name => _name;

  double get power => _power;

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
