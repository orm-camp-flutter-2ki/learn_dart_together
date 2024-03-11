class Wand {
  String _name;
  double _power;

  Wand({
    required String name, // Wand 클래스의 name은 다른 클래스에서 건드리지 못하게 접급제한자 붙이기
    required double power, // Wand 는 사물이니까 마법사가 건들지 못하게 막아야 한다?!
  }):_name = name, _power = power;

  // =========== name 의 getter / setter ===========
  String get name => _name;

  set name(String wandName) {
    if (wandName.length <= 3) {
      throw Exception('마법사의 이름은 반드시 3글자 이상이어야 합니다.');
    }
    _name = wandName;
  }

  // =========== power 의 getter / setter ===========
  double get power => _power;

  set power(double wandMagicPower) {
    if (wandMagicPower < 0.5 || 100 < wandMagicPower) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
    _power = wandMagicPower;
  }
}