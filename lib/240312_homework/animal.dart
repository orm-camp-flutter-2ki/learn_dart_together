void main() {
  Dog dog = Dog('개', 'woof-woof');
  dog.talk();
  dog.tailWagging();

  Cat cat = Cat('고양이', 'meow--');
  cat.talk();
  cat.scratch();

  Bird bird = Bird('새', 'tweet-tweet-');
  bird.talk();
  bird.song();
}

class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);

  void talk() {
    print(sound);
  }
}

class Dog extends Animal {
  Dog(super.type, super.sound);

  void tailWagging() {
    print('강아지가 당신을 보며 꼬리를 흔듭니다.');
  }
}

class Cat extends Animal {
  Cat(super.type, super.sound);

  void scratch() {
    print('고양이가 당신을 할퀴었습니다.');
  }
}

class Bird extends Animal {
  Bird(super.type, super.sound);

  void song() {
    print('새가 지저귑니다.');
  }
}
