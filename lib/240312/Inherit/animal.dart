class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);

  void move() {
    print('움직임니다');
  }

  String makeSound(){
    print('$sound 하고 소리냅니다.');
    return sound;
  }
}
