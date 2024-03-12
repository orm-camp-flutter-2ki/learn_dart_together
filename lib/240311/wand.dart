import 'dart:io';

class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  }) {
    _checKWandName(this.name);
  }

  void _checKWandName(String name) {
    if (name.length < 3) {
      throw Exception('$name의 이름 길이가 짧습니다.');
    }
  }
}

main() {
  // Wand wandFirst = Wand(name: '지팡', power: 3.0);
  Wand wand = Wand(name: '지팡123', power: 3.0);
}