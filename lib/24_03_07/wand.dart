class Wand {
  // exception이 발생하지 않음
  String _name;
  double _power;

  Wand({required String name, required double power})
      : _name = name,
        _power = power;

  String get name => _name;

  double get power => _power;

  set name(String nameValue) {
    if (nameValue.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }

    _name = nameValue;
  }

  set power(double powerValue) {
    if (powerValue < 0.5 || powerValue > 100.0) {
      // 2.
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }

    _power = powerValue;
  }
}

void main(){
  // 인스턴스화 할 때는 익셉션이 발생하지 않음
  Wand fireWand = Wand(name: 'd', power: 0.1);

  // 변경 시에만 익셉션 발생
  fireWand.name = 'z';
}