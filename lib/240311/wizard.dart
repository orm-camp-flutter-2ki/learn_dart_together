//문제 1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
//부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.
//마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
//지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
//마법사의 지팡이는 null 일 수 없다. 생성자 required 사용 + underbar 만들면 생성자 바꿔야함. 그리고 setter 활용
//마법사의 MP는 0 이상이어야 한다.
//HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
//setter 사용

import 'wand.dart';

// void main(){
//
//   Wizard wizard = Wizard(10,10,name:'으어', wand:null);
// }

class Wizard {
  String _name; // 이름
  int _hp;
  int _mp;
  Wand wand;

  String get name => _name; //람다식, getter : read only property 구현
  int get hp => _hp; //read only
  int get mp => _mp;

  Wizard(int hp, int mp, {required String name, required this.wand})
  : _name = name, _hp = hp, _mp = mp;

  set name(String valueName) { // setter : write only property 구현
    // 3글자 미만 오류
    if (valueName.length < 3) {
      throw Exception("에러메세지");
    }
    _name = valueName;
  }

  set mp(int mpValue) { // setter : write only property 구현
    // mp는 0이상이어야 한다
    if (mp < 0) {
      throw Exception("에러메세지");
    }
  }

  set hp(int inputHp) {
    if (inputHp < 0) {
      _hp = 0;
    }
  }
}