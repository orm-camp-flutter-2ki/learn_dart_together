import 'package:learn_dart_together/240311/wand.dart';
import 'package:test/test.dart';


void main() {
  //wand의 마력과 이름 길이 테스트
  test('wand의 마력 범위 테스트', () {
    //given
    Wand wand = Wand(name:'testwand', power: 14.0);
    //when
    wand.power = 0.0;
  });
  test('wand의 이름 길이 테스트', () {
    //given
    Wand wand = Wand(name:'testwand', power: 14.0);
    //when
    wand.name = 'dfffff';
  });
}





