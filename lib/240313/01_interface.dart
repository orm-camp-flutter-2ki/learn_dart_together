abstract interface class Human {
  void speak();
}

class Korean implements Human {
  @override
  void speak() {
    print('나는 한국인 입니다.');
  }
}

abstract interface class CleaningService {
  Shirt washShirt(Shirt shirt);
  Towel washTowel(Towel towel);
  Coat washCoat(Coat coat);
}

class SuwonCleaningService implements CleaningService {
  @override
  washCoat(coat) {
    return coat;
  }

  @override
  washShirt(shirt) {
    return shirt;
  }

  @override
  washTowel(towel) {
    return towel;
  }
}
