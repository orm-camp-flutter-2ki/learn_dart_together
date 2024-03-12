import 'package:learn_dart_together/0308/hero.dart';

class Slime {
  int hp = 50;
  final String suffix;
  // final int level = 10;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('$suffix이 공격했다.');
    print('${hero.name}에게 10의 데미지를 입혔다.');
    hero.hp -= 10;
  }

  void run() {}

  void sleepGas() {}
}

void main() {
  Hero hero = Hero(name: '12일의 용사', hp: 100);
}
