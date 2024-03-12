class Wand {

  String _name;
  double _power;

  Wand({required name, required power}) : _name = name, _power = power;

  void set name(String name) {
    if (name.length < 3) {
      throw Exception('이름은 세 글자 이상이어야 합니다.');
    }
    _name = name;
  }

  void set power(double power) {
    if (power < 0.5 || power > 100.0) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
    _power = power;
  }

  double get power => _power;

  String get name => _name;
}