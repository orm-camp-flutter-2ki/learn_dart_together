class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);
}

class Dog extends Animal {
  String bite;
  Dog({required String type, required String sound, required this.bite})
      : super(type, sound);
}

class Cat extends Animal {
  String scratch;
  Cat({required String type, required String sound, required this.scratch})
      : super(type, sound);
}

class Bird extends Animal {
  String fly;
  Bird({required String type, required String sound, required this.fly})
      : super(type, sound);
}
