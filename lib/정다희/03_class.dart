class Slime {
  num hp = 50;
  final String suffix;
  Slime(this.suffix);

  void attack(Hero hero){
    print('슬라임 $suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -=10;
  }
}

class Hero{
  String name;
  num hp;

  Hero(this.name, this.hp);

  void attack(Slime slime){
    print('$name 이 $slime 을 공격했다.');
    hp -=10;
  }

  void run(){
    print('$name 이 도망쳤다.');
  }
}