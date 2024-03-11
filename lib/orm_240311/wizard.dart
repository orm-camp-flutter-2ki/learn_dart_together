import 'package:learn_dart_together/orm_240311/wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    this.wand,
  })  : _name = name,
        _mp = mp,
        _hp = hp;

  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  set name(String value) {
    if (value.length <= 2) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }

  set mp(int value) {
    if (value <= 0) {
      throw Exception('마법사의 MP는 0 이상이어야 합니다.');
    }
    _mp = value;
  }

  void attack() {
    if (_hp <= 0) {
      _hp = 0;
    }
  }

  void showHp() {
    print('[현재 $_name 의 체력은 $hp]');
  }
}

void main() {
  final wand = Wand(name: 'windStaff', power: 11.1);
  final wizard = Wizard(name: '전우치', hp: 30, mp: 20, wand: wand);

  wizard._hp -= 101;
  wizard.attack();
  print('${wizard.name}, ${wizard.hp}, ${wizard.mp}, ${wand.name}');
}
