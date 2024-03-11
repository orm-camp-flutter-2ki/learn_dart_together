class Wand {
  String _name;
  double power;
  double _mp;

  Wand(
    this.power,
    double mp, {
    required String name,
  }) : _name = name, _mp = mp;

  set name(String name) {
    print('Wand $name');

    if (name.isEmpty || name.length < 3) {
      throw Exception('이름은 3글자 이상 작성해주세요');
    }
    _name = name;
  }

  set mp(double mp) {
    print('Wand name :  $mp');
    if (mp < 0.5 || mp > 100.0) {
      throw Exception('! 지팡이의 마력은 0.5 이상, 100.0 이하 여야 합니다.');
    }
    _mp = mp;
  }


  double get mp => _mp;
}
