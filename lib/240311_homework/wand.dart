class Wand {
  String _name;
  double _power;

  String get name => _name;
  double get power => _power;

  Wand({
    required String name,
    required double power,
  }) : _name = name, _power = power;

  //1.마법사나 지팡이의 이름은 null일 수 없고,반드시 3문자 이상이어야 한다.
  set name(String value) {
    if (value.length < 3) {
      throw Exception('글자가 너무 짧습니다.');
    }
    _name = value;
  }

  //2.지팡이의 마력은 0.5이상 100.0 이하여야 한다.
  set power(double value){
    if(value < 0.5 || value > 100){
      throw Exception('정상범주의 마력이 아닙니다.');
    }
    _power = value;
  }
}
