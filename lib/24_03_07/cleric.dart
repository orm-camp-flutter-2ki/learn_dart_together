import 'dart:math';

class Cleric{
  final int _maxHp = 50;
  final int _maxMp = 10;
  int _hp = 50;
  int _mp = 10;
  String _name;

  Cleric(this._name);

  void selfAid(){
    if(_mp >=5) {
      _mp -= 5;
      _hp = _maxHp;
    }
  }

  int pray(int second){
    int mpAmount = (_getRandomHealAmount(2) + 1) * second;

    return _maxMp < _mp + mpAmount? _maxMp - _mp: mpAmount;
  }

  int _getRandomHealAmount(int limit){

    return Random().nextInt(limit);
  }
}