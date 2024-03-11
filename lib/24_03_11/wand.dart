class Wand {
  String _name;
  double power;
  double _mp;
  static const double maxMp = 100.0;
  static const double minMp = 0.5;

  Wand(
    this.power,
    double mp, {
    required String name,
  })  : _name = name,
        _mp = mp;

  set name(String name) {
    print('Wand $name');

    if (name.isEmpty || name.length < 3) {
      throw Exception('이름은 3글자 이상 작성해주세요');
    }
    _name = name;
  }

  String get name => _name;



  set mp(double mp) {
    if (mp < minMp || mp > maxMp) {
      throw Exception('! 지팡이의 마력은 0.5 이상, 100.0 이하 여야 합니다.');
    }

    _mp = mp;
  }

  double get mp => _mp;
}
