import 'animal.dart';

class Cat extends Animal{
  Cat(super.type, super.sound);

  @override
  void move(){
    print('살금살금 걸으면서 이동');
  }
}