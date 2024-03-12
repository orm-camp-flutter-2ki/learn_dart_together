import '03_slime.dart';

class Hero {
  String name;
  int hp;

  Hero({required this.name, required this.hp});

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    slime.hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다.');
  }
}

