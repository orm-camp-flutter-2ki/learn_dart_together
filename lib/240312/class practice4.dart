// 4번문제
// Animal 클래스를 만들고 type, sound와 같은 속성을 포함합니다.
// Dog, Cat 및 Bird와 같은 Animal 클래스의 하위 클래스를 만듭니다.
// 각 하위 클래스에 고유한 속성 및 메서드를 추가합니다.

class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);

  void sayType() {
    print('type:${this.type}');
  }

  void saySound() {
    print('sound:${this.sound}');
  }
}

class Dog extends Animal {
  Dog(super.type, super.sound);

  @override
  void sayType() {
    print('type:${super.type}');
  }
}

void main() {
  Dog dog = Dog('강아지', '멍멍');
  dog.sayType();
  dog.saySound();
}
