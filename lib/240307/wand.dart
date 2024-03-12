// dynamic, var, name!, late,

class Wand {
  // 늦은 초기화
  String _name;
  double power;

  Wand({
    required String name,
    required this.power,
  }) : _name = name;

  // 지팡이의 반드시 3문자 이상이어야 한다
  set name(String value) {
    if (value.length < 3) {
      throw Exception('지팡이의 반드시 3문자 이상이어야 한다');
    }

    _name = value;
  }

  String get name => _name;
}
