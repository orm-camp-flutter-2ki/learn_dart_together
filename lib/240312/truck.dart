import 'package:learn_dart_together/240312/vehicle.dart';

class Truck extends Vehicle {
  Truck(super.maker, super.model, super.year);

  int num = 30;

  @override
  void speed() {
    print('내 자동차는 $maker의$model이고,$year년도에 나왔어');
    print('내 자동차의 시속$num 정도 나와');
  }
}
