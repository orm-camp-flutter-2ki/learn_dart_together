import 'package:learn_dart_together/24_03_11/02_wand.dart';

void main() {}

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  Wizard(this._name, this._hp, this._mp, this.wand);

  // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set name(String nameValue) {
    if (nameValue.length < 3)
      throw Exception("3글자 이상으로 써주세요.");
    _name = nameValue;
  }

  set mpValue(int mpValue) {
    if (mpValue < 0)
      throw Exception("에러메세지"); // MP가 음수이면 예외 발생
    _mp = mpValue; // 마법사의 MP 설정
  }

  set hp(int inputHp) {
    if (inputHp < 0) {
      _hp = 0; // HP가 음수이면 0으로 설정
    } else {
      _hp = inputHp; // 그렇지 않은 경우 입력된 HP로 설정
    }
  }
}