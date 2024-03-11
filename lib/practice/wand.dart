import 'package:learn_dart_together/practice/common.dart';

class Wand {
  static const double minPower = 0.5;
  static const double maxPower = 100;

  String _name = defaultName;
  double _power = minPower;

  set name(String? value) {
    if (value == null || value.length < minNameLen) {
      throw Exception("$minNameLen글자 이상의 이름을 입력해주세요.");
    }
    _name = value;
  }

  set power(double value) {
    if (value < minPower || value > maxPower) {
      throw Exception("지팡이의 마력은 $minPower ~ $maxPower의 범위로 지정해야 합니다.");
    }
    _power = value;
  }

  Wand({required String? name, required double power}) {
    this.name = name;
    this.power = power;
  }
}
