abstract interface class Man {

}

abstract interface class Woman {

}

abstract interface class Attackable {
  void attack();
}

abstract interface class Drawable {
  void draw();
}

abstract interface class Movable {
  void move(int seconds);
}

class House implements Drawable {
  @override
  void draw() {
    print("   /\\");
    print("  /  \\");
    print(" /    \\");
    print("/______\\");
    print("|      |");
    print("|      |");
    print("|______|");
  }
}

class Dog implements Drawable, Movable {
  @override
  void draw() {
    print('개가 그려짐');
  }

  @override
  void move(int seconds) {
    String space = '';
    for (int i = 0; i < seconds; i++) {
      space = '$space  ';
    }
    print('$space개가 그려짐');
  }
}

class Car implements Drawable, Movable {
  @override
  void draw() {
    print("차가 그려짐");
  }

  @override
  void move(int seconds) {
    String space = '';
    for (int i = 0; i < seconds; i++) {
      space = '$space    ';
    }
    print('$space차가 그려짐');
  }
}

void main() {
  House house = House();
  house.draw();

  Car car = Car();
  car.draw();
  car.move(10);

  Dog dog2 = Dog();
  dog2.move(10);


  Drawable house2 = House();
  Drawable car2 = Car();
  Drawable dog = Dog();
  dog.draw();


  // 기능별로 모으기 가능 (100개)
  List<Drawable> items = [
    house2,
    car2,
    dog,
    car,
  ];

  items.add(house);

  for (Drawable item in items) {
    item.draw();
  }

}
