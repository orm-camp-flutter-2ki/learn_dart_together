class Wand {
  String name;
  double _power;

  Wand({required this.name, required double power}) : _power = power;

  double get power => _power;

  set power(double value) {
    if (value < 3) {
      throw Exception('이름이 너무 짧습니다.');
    } else {
      _power = value;
    }
  }
}
