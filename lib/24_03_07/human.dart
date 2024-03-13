abstract interface class Human {
    void speak();
    void jump();
}

class Korean implements Human {
  @override
  void speak() {
    print('나는 한국인 입니다.');
  }

  @override
  void jump() {
    // TODO: implement jump
  }
}