class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand({
    required String name, // 마법사의 이름은 null X
    required double power, // 마력 0.5이상 100이하 = null X
  })  : _name = name,
        //private 접근지정자> 자기 자신의 클래스만 접근 가능
        _power = power {
    //private 접근지정자> 자기 자신의 클래스만 접근 가능
    this.name = name;
    this.power = power;
  }

  String get name => _name; //람다식, getter : read only property 구현

  set name(String valueName) {
    // setter : write only property 구현
    // 3글자 미만 오류
    if (valueName.length < 3) {
      throw Exception("에러메세지");
    }
    _name = valueName;
  }

  double get power => _power;

  set power(double valuePower) {
    // setter : write only property 구현
    // 0.5 이상이거나 100 이하 = 0.5미만 또는(=||) 100초과 시 오류
    if (valuePower < 0.5 || valuePower > 100) {
      throw Exception("에러메세지");
    }
    _power = valuePower;
  }
}
