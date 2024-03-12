import 'wand.dart';

class Wizard {
  late final String _name;
  late int _hp;
  late int _mp;
  final Wand _wand;

  Wizard(
      {required String name,
      required int hp,
      required int mp,
      required Wand wand})
      : _wand = wand {
    this.name = name;
    this.hp = hp;
    this.mp = mp;
  }

  String get name => _name;

  int get hp => _hp;

  Wand get wand => _wand;

  int get mp => _mp;

  set hp(int hp) {
    _hp = _checkHPValidity(hp);
  }

  set mp(int mp) {
    _mp = _checkMPValidity(mp);
  }

  set name(String name) {
    _name = _checkNameValidity(name);
  }

  int _checkHPValidity(int hp) {
    return hp < 0 ? 0 : hp;
  }

  int _checkMPValidity(int mp) {
    if (mp < 0) _exceptionHandler('mp는 0보다 작을 수 없습니다.');
    return mp;
  }

  String _checkNameValidity(String name) {
    if (name.length < 3) _exceptionHandler('이름은 3글자 이상이어야 합니다.');

    return name;
  }

  void _exceptionHandler(String message) {
    throw Exception(message);
  }
}
