import 'package:learn_dart_together/24_03_12/animal.dart';

class Rabbit extends Animal{
  Rabbit({required super.type, required super.sound});

  void jumping(){
    print('$type이/가 점프를 뛰어요! 깡총 깡총!!');
  }

  void listen(){
    print('$type이/가 소리를 들어요! 쫑긋~');
  }
}