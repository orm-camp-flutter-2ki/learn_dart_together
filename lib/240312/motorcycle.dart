import 'package:learn_dart_together/240312/vehicle.dart';

class Motocycle extends Vehicle {
  Motocycle(super.maker, super.model, super.year);

  int num = 10;

  @override
  void speed() {
    print('내 탈것은 $maker의$model이고,$year년도에 나왔어');
    print('내 탈 것의 시속$num 정도 나와');
  }
}
