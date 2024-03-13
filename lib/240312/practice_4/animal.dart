class Animal {

  String type;
  String sound;

  Animal(this.type, this.sound);

  void soundIs() {
    print("'$type'은/는 $sound 소리를 냅니다.");
  }
}