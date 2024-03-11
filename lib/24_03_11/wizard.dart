import 'wand.dart';

class Wizard {
  late final String _name;
  late final int _hp;
  final Wand _wand;

  Wizard({required String name, required int hp, required Wand wand})
      : _wand = wand {
    _name = _checkNameValidity(name);
    _hp = _checkHPValidity(hp);
  }

  String get name => _name;

  int get hp => _hp;

  Wand get wand => _wand;

  int _checkHPValidity(int hp) {
    return hp < 0 ? 0 : hp;
  }

  String _checkNameValidity(String name) {
    if (name.length < 3) _exceptionHandler('이름은 3글자 이상이어야 합니다.');

    return name;
  }

  void _exceptionHandler(String message) {
    throw Exception(message);
  }
}
