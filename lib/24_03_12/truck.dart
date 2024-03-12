import 'package:learn_dart_together/24_03_12/vehicle.dart';

class Truck extends Vehicle {
  static const int _maxLoad = 10;
  static const int _minLoad = 0;
  int _load;

  Truck(super.maker, super.model, super.year) : _load = _minLoad;

  void load(int weight) {
    if (_load + weight > _maxLoad) {
      print('더 이상 짐을 실을 수 없습니다.');
    } else {
      _load += weight;
      print('짐을 실었습니다. 현재 적재량: $_load');
    }
  }

  void unload(int weight) {
    if (_load - weight < _minLoad) {
      print('더 이상 짐을 내릴 수 없습니다.');
    } else {
      _load -= weight;
      print('짐을 내렸습니다. 현재 적재량: $_load');
    }
  }
}
