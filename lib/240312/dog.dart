import 'animal.dart';

class Dog extends Animal {
  Dog({required super.name, required super.type, required super.sound});

  void digging() {
    print('$type $name 이/가 땅을 팝니다.');
  }
}