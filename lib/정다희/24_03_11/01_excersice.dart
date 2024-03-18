class Wand {
  String _name;
  double _power;

  Wand({
    required this.name,
    required this.power
  })
      :_name = name,
        _power = power {
    _this.name = name;
    _this.power = power;
  }

  String get name => _name;

  set name(String newName) {
    if (newName.length < 3 || newName == null) {
      throw Exception("이름은 null이 될 수 없으며, 3자 이상이어야 합니다.");
    }
    _name = newName;
  }

  set power(int newHp) {
    if (newHp < 0.5 || newHp >= 100) {
      throw Exception("지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.");
    }
    _power = newPower;
  }
}


class Wizard {
  String _name;
  int _hp;
  Wand _wand;

  // required this.name 같은 표현은 클래스의 직접적인 속성에 사용할때 유효함. 하지만 name은 비공개 속성임
  Wizard({required String name, required  int hp, required  Wand wand})
      :_name= name,
        _hp = hp,
        _wand = wand;

  String get name => _name;

  set name(String newName) {
    if (newName.length < 3 || newName == null) {
      throw Exception("이름은 null이 될 수 없으며, 3자 이상이어야 합니다.");
    }
    _name = newName;
  }

  int get hp => _hp;

  set hp(int newHP) {
    if (newHP < 0) {
      _hp = 0;
    } else {
      _hp = newHP;
    }
  }

  Wand get wand => _wand;

  set wand(Wand newWand) {
    if (newWand == null) {
      throw Exception("마법사의 지팡이는 null일 수 없습니다.");
    }
    _wand = newWand;
  }
}