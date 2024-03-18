class Animal {
  void walk() {
    print('걷습니다.');
  }
  void water() {
    print('물을 줍니다');
  }
}

class Bird extends Animal implements attackable {
  @override
  void walk() {
    print('새가 걷습니다.');
  }
  void fly() {
    print('새가 날았습니다.');
  }
  void attack() {
    print('새 공격');
  }
}

class Cat extends Animal implements attackable {
  @override
  void walk() {
    print('고양이가 걷습니다.');
  }

  void attack() {
    print('고양이 공격');
  }
}

abstract interface class attackable {
  void attack();
}

void main() {
  Animal bird = Bird();
  //bird.water();
  // bird.fly();    에러/ 만약에 fly를 하고 싶으면 as를 이용하여 다운캐스팅을 하여 구현함
  (bird as Bird).fly();
  Animal cat = Cat();
  List<Animal> AnimalList = [];
  AnimalList.add(bird);
  AnimalList.add(cat);

  for (var animal in AnimalList) {
    animal.walk();
  }
  attackable cat2 = Cat();
  attackable bird2 = Bird();

  List<attackable> attackableList = []; //attackablelist를 만듦
  attackableList.add(cat2);
  attackableList.add(bird2);

  for (var family in attackableList) {
    //animal은 내가 그냥 지으면 됨
    family.attack(); //공갹 가능한애들 모아서 다 같이 쓰겠다. 이거 때문에 인터페이스 만든거다 이래서 다형성 조음
  }
}
