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

  // 게터 세터는 변수 이름과 동일하게 가져가는 것이 법칙.
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



  // Wand({
  //   required String name,
  //   required this.power,
  // }){
  //   // 다른 많은 언어들이 이렇게 생성자 선언하면서 블록을 열어서 런타임에 코드가 동작하도록 한다.
       // 이 방식은 초기화를 확실하게 해준다는 보장이 없으므로 :을 붙여서 생성자를 만들도록 한다.
  // }



