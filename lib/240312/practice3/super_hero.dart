import 'package:learn_dart_together/240312/practice3/hero.dart';

class SuperHero extends Hero {
  SuperHero({
    required String name,
    required int hp
  }) : super(name, hp);

  bool _isFlying = false;

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;
    if (value) {
      print('$name이 날개를 펼쳤다.');
    } else {
      print('$name이 날개를 접었다.');
    }
  }

  @override
  void run() {
    print('$name이 퇴각했다.');
  }
}