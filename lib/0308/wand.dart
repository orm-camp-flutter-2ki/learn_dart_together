class Wand {
  String name; // 이름
  double _power; // 마력

  Wand({
    required this.name,
    required double power,
  }) : _power = power;

  // getter
  double get power => _power;

  // setter
  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다
  set power (double powerValue) {
    if(powerValue < 0.5 || powerValue > 100.0) {
      throw Exception('wand의 마력은 5.0 이상 100.0 이하로 설정해주세요.');
    }
    _power = powerValue;
  }
}
