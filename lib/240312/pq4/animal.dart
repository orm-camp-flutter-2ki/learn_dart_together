// 동물 클래스 정의
class Animal {
  String type;  // 종류
  String sound;  // 소리

  Animal(this.type, this.sound);

  void makeSound() {
    print('$type가 $sound 소리를 냅니다.');
  }
}

// 개 클래스 정의 - 동물 클래스의 하위 클래스
class Dog extends Animal {
  String breed;  // 품종
  // 상속
  Dog(super.type, super.sound, this.breed);

  void wagTail() {
    print('$type는 꼬리를 흔듭니다.');
  }
}

// 고양이 클래스 정의 - 동물 클래스의 하위 클래스
class Cat extends Animal {
  bool hasWhiskers;  // 수염 여부
  // 상속
  Cat(super.type, super.sound, this.hasWhiskers);

  void meow() {
    print('$type가 야옹합니다!');
  }
}

// 새 클래스 정의 - 동물 클래스의 하위 클래스
class Bird extends Animal {
  bool canFly;  // 날 수 있는지 여부
  // 상속
  Bird(super.type, super.sound, this.canFly);

  void fly() {
    if (canFly) {
      print('$type가 날아갑니다!');
    } else {
      print('$type가 날 수 없습니다!');
    }
  }
}

void main() {
  // 개 객체 생성 및 초기화
  Dog dog = Dog('개', '왈왈', '골든 리트리버');
  dog.makeSound();
  dog.wagTail();

  // 고양이 객체 생성 및 초기화
  Cat cat = Cat('고양이', '야옹', true);
  cat.makeSound();
  cat.meow();

  // 새 객체 생성 및 초기화
  Bird bird = Bird('새', '짹짹', true);
  bird.makeSound();
  bird.fly();
}