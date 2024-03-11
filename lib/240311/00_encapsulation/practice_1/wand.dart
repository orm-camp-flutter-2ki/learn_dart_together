class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power})
      : _name = name, _power = power;


  // 이름
  String get name => _name;
  set name(String value) {
    if( value.length < 3 ) {
      throw Exception('이름은 3글자 이상');
    }
    _name = value;
  }


  // 마력
  double get power => _power;
  set power(double value) {
    if( value >= 0.5 && value <= 100.0 ) {
      _power = value;
    } else {
      throw Exception('마력은 0.5 이상 100.0 이하');
    }
  }

}