void main() {
  Hero hero = Hero(name: '홍길동', hp: 50);
  print(hero.maxHp);
}

class Character {
  String name;
  int hp;
  int maxHp = 100;

  Character({required this.name,required this.hp});
}

class Hero extends Character{
  Sword? sword;

  Hero({required super.name, required super.hp});
}

class Sword {
  String name;
  int power;

  Sword({required this.name,required this.power});
}
