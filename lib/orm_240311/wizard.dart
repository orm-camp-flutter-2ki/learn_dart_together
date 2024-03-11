import 'package:learn_dart_together/orm_240311/wand.dart';

class Wizard {

  String _name;
  int hp;
  Wand? wand;



  Wizard({
    required String name,
    required this.hp,
    this.wand,
  }) : _name = name;

  String get name => _name;

  set name(String value) {
    if (value.length <= 2){
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }
}
