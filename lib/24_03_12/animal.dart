class Animal {
  String type;
  String sound;

  Animal({
    required this.type,
    required this.sound,
  });

  void bark() {
    print('$type이 소리를 냅니다. $sound!!');
  }
}
