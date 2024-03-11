class Wand {
  String _name = '';
  double _power = 0.0;

  //방법2: setter를 통한 값 검증 후 삽입하기
  Wand({required String name, required double power}) {
    this.name = name;
    this.power = power;
  }

  String get name => _name;
  double get power => _power;

  void set name(String newName) {
    if (newName == null || newName == '') {
      throw Exception('이름을 비울 수 없습니다.');
    }

    if (newName.length < 3) {
      throw Exception("지팡이의 이름이 3글자 미만입니다.");
    }

    _name = newName;
  }

  void set power(double newPower) {
    if (newPower < 0.5 || newPower > 100.0) {
      throw Exception("지팡이의 허용된 마력치가 잘못되었습니다. 0.5이상 100이하로 설정해주세요.");
    }

    _power = newPower;
  }
}