class Wand {
  String _name;
  double _power;

  // double get power => _power;

  Wand({
    required String name,
    required double power,
  }) : _power = power, _name = name;

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }

  set power(double value) {
    if (value < 0.5 || value > 100) {
      throw Exception('지방이 마력 수치에 오류가 있습니다.');
    }
    _power = value;
  }
}

void main (){
  Wand wandA = Wand(name: 'StickA', power: 5);
}
