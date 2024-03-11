class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power});

  void set setName(String newName) {
    if (newName.length < 3) {
      throw Exception("지팡이의 이름이 3글자 미만입니다.");
    }

    name = newName;
  }

  void set setPower(double newPower) {
    if (newPower < 0.5 || newPower > 100.0) {
      throw Exception("지팡이의 허용된 마력치가 잘못되었습니다. 0.5이상 100이하로 설정해주세요.");
    }

    power = newPower;
  }
}