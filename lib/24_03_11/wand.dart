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
    return power < 0.5 ? 0.5 : power;
  }

  void _exceptionHandler(String message) {
    throw Exception(message);
  }
}
