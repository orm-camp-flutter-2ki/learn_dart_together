import 'package:learn_dart_together/24_03_11/wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  //방법1: setter로 검증없이 바로 값 세팅하기
  Wizard({required String name, required int hp, required int mp, required Wand wand}) :
      _name = name,
      _hp = hp,
      _mp = mp,
      _wand = wand;

  set name(String newName) {
    if (newName == '' || newName == "") {
      throw Exception('이름을 비울 수 없습니다.');
    }

    if (newName.length < 3) {
      throw Exception('이름은 3글자 이상으로 지어주세요.');
    }

    _name = newName;
  }

  set mp(int newMP) {
    if (newMP < 0) {
      throw Exception('MP는 0 이상으로 설정해주세요.');
    }

    _mp = newMP;
  }

  set hp(int newHP) {
    if (newHP < 0) {
      _hp = 0;

      return;
    }

    _hp = newHP;
  }

  int get hp => _hp;
  int get mp => _mp;
}