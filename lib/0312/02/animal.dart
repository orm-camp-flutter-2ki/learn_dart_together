class Animal {

  String type;
  String sound;
  int leg;

  Animal(this.type, this.sound, this.leg);

  void cry() {
    print('$type가 $sound!');
  }
}