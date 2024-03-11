import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;


  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand wand})
      : _name = name, _hp = hp, _mp = mp, _wand = wand;


  // 이름
  String get name => _name;
  set name(String value) {
    if( value.length < 3 ) {
      throw Exception('이름은 3글자 이상');
    }
    _name = value;
  }


  // MP
  int get mp => _mp;
  set mp(int value) {
    if( value < 0 ) {
      throw Exception('MP는 0이상');
    }
    _mp = value;
  }


  // HP
  int get hp => _hp;
  set hp(int value) {
    // if( value < 0 ) {
    //   _hp = 0;
    // }
    // _hp = value;

    _hp = value < 0 ? 0 : value;
  }


  // 지팡이
  Wand get wand => _wand!;
  set wand(Wand? wand) {
    if( wand == null ) {
      throw Exception('지팡이는 Null 일 수 없다.');
    }
    _wand = wand;
  }

}