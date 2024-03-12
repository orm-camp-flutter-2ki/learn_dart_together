import 'package:learn_dart_together/24_03_12/tire.dart';
import 'package:learn_dart_together/24_03_12/vehicle.dart';

class Car extends Vehicle {
  Tier _tier;

  Car(super.maker, super.model, super.year, {required Tier tier})
      : _tier = tier;

  set changeTire(Tier tier) {
    print('${_tier.maker}타이어를 ${tier.maker}타이어로 교체..');
    _tier = tier;
  }
}
