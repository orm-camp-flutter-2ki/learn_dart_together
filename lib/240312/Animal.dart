class Animal {
  String type;
  String sound;

  Animal({required this.type, required this.sound});

  void makesound() {
    print('$type가 $sound를 낸다');
  }
}
