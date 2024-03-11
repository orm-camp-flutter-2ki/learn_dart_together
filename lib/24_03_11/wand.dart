class Wand {
  String _name;
  double power;

  Wand({
    required String name, // Wand 클래스의 name은 다른 클래스에서 건드리지 못하게 접급제한자 붙이기
    required this.power,
  }):_name = name;

  String get name => _name;

  set name(String wandName) {
    if (wandName.length <= 3) {
      throw Exception('마법사의 이름은 반드시 3글자 이상이어야 합니다.');
    }
    _name = wandName;
  }
}