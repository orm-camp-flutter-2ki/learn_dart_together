class Animal {

  String type;
  String sound;

  Animal(this.type, this.sound);

  void soundIs(String type, String sound) {
    print("'$type'은/는 $sound 소리를 냅니다.");
  }
}