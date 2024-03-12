class Animal {
  String name;
  String type;
  String sound;

  Animal({
    required this.name,
    required this.type,
    required this.sound
  });

  void makeSound() {
    print('$type이/가 소리를 내려고 한다.');
  }
}