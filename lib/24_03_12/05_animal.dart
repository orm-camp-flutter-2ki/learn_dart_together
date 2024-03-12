class Animal {
  String type;
  String sound;

  Animal({required this.type, required this.sound});

  void bark() {
    print('$type이/가 $sound 하고 울고 있습니다.');
  }
}
class Dog extends Animal {
  Dog({required super.type, required super.sound});

  @override
  void bark() {
    print('$type은 $sound 하고 사납게 짖으며 쫓아오는 중입니다.');
  }
}

class Cat extends Animal {
  Cat({required super.type, required super.sound});

  @override
  void bark() {
    print('$type은 드러누워 $sound거리고 있습니다.');
  }
}

class Bird extends Animal {
  Bird({required super.type, required super.sound});

  @override
  void bark() {
    print('$type이 $sound거리며 하늘을 날고 있습니다.');
  }
}
