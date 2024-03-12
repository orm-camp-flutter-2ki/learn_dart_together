class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);

  void move() {
    print('움직입니다');
  }

  void makeSound() {
    print('$sound 소리를 냅니다.');
  }
}
