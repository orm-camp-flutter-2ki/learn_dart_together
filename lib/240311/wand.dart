
class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;
//getter
  String get name => _name;
  double get power =>_power;

//setter
  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }
set power(double value) {
  if (value < 0.5 || value > 100) {
    throw Exception('마력은 0.5 보다 크고 100 보다는 작아야합니다');
  }
  _power = value;
}
}


