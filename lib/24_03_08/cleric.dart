import 'dart:math';

class Cleric {
  static final int _maxHp = 50;
  static final int _maxMp = 10;
  int _hp = 50;
  int _mp = 10;
  String _name;

  Cleric(this._name);

  void selfAid() {
    if (_mp >= 5) {
      _mp -= 5;
      _hp = _maxHp;
      print('$_name의 hp가 회복 되었습니다. 잔여 mp: $_mp, hp: $_hp');
    } else {
      print('$_name의 mp가 부족하여 hp를 회복하지 못했습니다. 잔여 mp: $_mp, hp: $_hp');
    }
  }

  int pray(int second) {
    int randomAmount = _getRandomHealAmount(3);
    int mpAmount = randomAmount + second;
    int result = _maxMp < _mp + mpAmount ? _maxMp - _mp : mpAmount;
    _mp += result;
    print('$_name의 mp가 총$result만큼 회복되었습니다. 잔여 mp: $_mp, mp회복량: $result, random회복량: $randomAmount');

    return result;
  }

  int _getRandomHealAmount(int limit) {
    return Random().nextInt(limit);
  }
}
