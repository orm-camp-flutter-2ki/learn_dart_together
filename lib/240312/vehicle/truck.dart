import 'vehicle.dart';

class Truck extends Vehicle {
  bool _loaded;

  Truck(super.maker, super.model, super.year) : _loaded = false;

  bool get loaded {
    return _loaded;
  }

  @override
  void drive() {
    print('트럭이 간다.');
  }

  void getLoaded() {
    _loaded = true;
  }

  void offLoaded() {
    _loaded = false;
  }
}
