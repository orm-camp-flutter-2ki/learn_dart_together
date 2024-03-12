
import 'slime.dart';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack(Slime slime){
    print('$name이 $slime 을 공격했다');
    hp -= 10;
  }

  void run(){
    print('$name 이 도망쳤다');
  }
}

