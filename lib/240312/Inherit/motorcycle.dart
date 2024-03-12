import 'package:learn_dart_together/240312/Inherit/Vehicle.dart';

class Motorcycle extends Vehicle{

  Motorcycle(super.maker, super.model, super.year);

  @override
  void move(){
    super.move();
    print("오토바이가 지나갑니다");
  }

}