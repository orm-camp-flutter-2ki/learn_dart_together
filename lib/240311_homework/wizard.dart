import 'wand.dart';

void main() {
  Wand wand = Wand(name: '김완드', power: 0.2);
  Wizard wizard = Wizard(10, 10, wand, name: '으어');
  print(wizard);
}

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  Wizard(int hp, int mp, this.wand, {required String name})
      : _name = name,
        _hp = hp,
        _mp = mp;

  //1.마법사나 지팡이의 이름은 null일 수 없고,반드시 3문자 이상이어야 한다.//3.마법사의 지팡이는 null일 수 없다.

  set name(String value) {
    if (value.length < 3) {
      throw Exception('글자가 너무 짧습니다.');
    }
    _name = value;
  }

  //4.마법사의 MP는 0이상이어야한다.
  set mp(int value) {
    if (value < 0) {
      throw Exception('마나가 없습니다.');
    }
    _mp = value;
  }

  //5.HP가 음수가 되는 상황에서는 대신 0을 설정 되도록한다.
  set hp(int value) {
    _hp = value < 0 ? 0 : value;
  }
}
