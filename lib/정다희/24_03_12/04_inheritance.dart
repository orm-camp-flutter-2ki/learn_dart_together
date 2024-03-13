import '../03_class.dart';

class PoisonSlime extends Slime{


  int attackCount = 5;
  PoisonSlime(suffix):super(suffix);


  @override
  void attack(Hero hero) {
    super.attack(hero); // 상위 클래스의 attack 메소드를 호출하여 기본 공격을 수행합니다.
    // 여기에 추가적인 독 공격 로직을 구현할 수 있습니다.
    if (attackCount > 0) {

      num attackDam = hero.hp * 0.2;
      print('추가로, 독 포자를 $attackDam 만큼 살포했다!');
      hero.hp -=attackDam; // 소수점일 경우?
      attackCount--;
    }
  }
}


class Animal {
  String type;

  Animal({required this.type});

  void sound(){
    print('나는 이렇게 짖습니다');
  }

}

class Dog extends Animal{

  Dog({super.type = "Dog"});

  @override
  void sound() {
    // TODO: implement sound
    print('왈왈');

  }
}

void main(){
  Dog dog = Dog();
  Hero hero = Hero("아이언맨", 3000);
  dog.sound();
  PoisonSlime bossslime = PoisonSlime("A");
  bossslime.attack(hero);
}

