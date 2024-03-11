import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? _wand;

  Wizard(this._name, this._hp, this._mp, this._wand);

  void set name(String paramName) {
    if (paramName.length < 3) {
      throw Exception('마법사 이름은 3글자 이상이여야 합니다');
    } else {
      this._name = paramName;
    }
  }

  String get name {
    return _name;
  }

  void set hp(int paramHp) {
    if (paramHp < 0) {
      _hp = 0;
    } else {
      _hp = paramHp;
    }
  }

  int get hp {
    return _hp;
  }

  void set mp(int paramHp) {
    if (paramHp < 0) {
      _mp = 0;
    } else {
      _hp = paramHp;
    }
  }

  int get mp {
    return _mp;
  }

  void set wand(Wand? wand) {
    if (wand == null) {
      throw Exception('완드는 null일 수 없 수 없습니다.');
    } else {
      this._wand = wand;
    }
  }

  Wand? get wand {
    return _wand;
  }
}

void main() {}
