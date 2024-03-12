import 'animal.dart';

class Bird extends Animal {
  Bird({required super.name, required super.type, required super.sound});

  // 날지 못하는 새는 행동 불가 -> interface 로 구현하면 좋을 듯 (성종호 님 코멘트)
  void fly() {
    print('$type $name이 날아오릅니다.');
  }
}