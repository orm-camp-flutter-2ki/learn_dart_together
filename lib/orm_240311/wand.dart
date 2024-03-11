class Wand {
  String _name;
  double power;


  Wand({
    required String name,
    required this.power,
}) : _name = name;

  String get name => _name;

  set name(String value) {
    if (value.length <= 2){
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }
}