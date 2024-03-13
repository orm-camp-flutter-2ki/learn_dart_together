import '../orm_240312/slime.dart';

abstract interface class Character {
  String name;
  int hp;

  Character(this.name, this.hp);

  void run(){
    print('$name이 도망쳤다.');

  }

  void attack(Slime slime);
}

class Dancer extends Character{
  Dancer(super.name, super.hp);

  @override
  void attack(Slime slime) {
    // TODO: implement attack
  }

}

abstract interface class CleaningSevice {
  Shirt washShirt(Shirt shirt);

}