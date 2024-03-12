import 'package:learn_dart_together/24_03_12/ex2.animal/animal.dart';

class Dog extends Animal {
  void bark(){
    print('🐶🐶🐶우리집 강아지는 짖지 않아요🐶🐶🐶');
  }

  Dog({required super.type, required super.sound});
}