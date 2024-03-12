import 'hero.dart';

class SuperHero extends Hero {
  bool _isFlying = false;

  SuperHero({
    required super.name,
    required super.hp,
  });

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;

    if (value) {
      print('날랐다');
    } else {
      print('내려왔다');
    }
  }
}

void main() {
  final superHero = SuperHero(name: 'name', hp: 100);
  superHero.isFlying = true;
  superHero.isFlying = false;

}
