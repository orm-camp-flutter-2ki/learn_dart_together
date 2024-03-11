import 'dart:math';

class Wand {
  String _name;
  double _power;

  Wand(this._name, this._power);

  void set name(String paramName) {
    if (paramName.length < 3) {
      throw Exception('지팡이 이름은 3글자 이상이여야 합니다');
    } else {
      this._name = paramName;
    }
  }

  String get name {
    return _name;
  }

  void set power(double parampower) {
    if (parampower >= 0.5 && parampower <= 100.0) {
      this._power = parampower;
    } else {
      throw Exception('지팡이 파워 범위초과');
    }
  }

  double get power {
    return _power;
  }
}

void main() {
  Wand ward = new Wand('막대기', 10);
  print('${ward.name}');
}
