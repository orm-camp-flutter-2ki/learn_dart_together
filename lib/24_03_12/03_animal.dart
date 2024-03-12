class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);

}

class Dog extends Animal{
  String name;
  int barkCount = 0;

  Dog(super.type, super.sound, this.name);
  void bark() {
    print('한번 짖었습니다.');
    barkCount -= 1;
    print('강아지가 $sound 소리를 냅니다.');
    print('강아지는 $type에 속합니다.');
    print('강아지의 이름은 $name 입니다.');
  }

}

class Cat extends Animal{
  String name;
  Cat(super.type, super.sound, this.name);

  void climb () {
    print('$name이 나무를 탔습니다.');
    print('$name이 $sound 소리를 냅니다.');
  }

}

class Bird extends Animal{
  String name;
  Bird(super.type, super.sound, this.name);
  void fly () {
    print('$name이 하늘로 날았습니다.');
    print('$name이 $sound를 냅니다.');
  }
}

void main() {
  Dog dog = Dog('Mammals', 'growls', '실바');
  dog.bark();
}