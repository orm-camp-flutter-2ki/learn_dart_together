import 'animal.dart';

class Dog extends Animal{

  Dog(super.type);

  @override
  void sound(){
    print('왈왈');
  }
}