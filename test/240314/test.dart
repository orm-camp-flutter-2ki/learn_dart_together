import 'package:learn_dart_together/240314/quiz_2/x.dart';
import 'package:learn_dart_together/240314/quiz_2/y.dart';
import 'package:learn_dart_together/240314/quiz_2/a.dart';
import 'package:learn_dart_together/240314/quiz_2/b.dart';
import 'package:test/test.dart';

void main() {
  test('연습문제2', () {
    Y a = A();
    Y b = B();
    List<Y> yList = [a, b]; //서로 다른 인스턴스를 Y가 상속하고 있다.
    for (Y y in yList) { //Y 리스트에 있는게 Y 에 하나씩 담겨서 아래에서 사용 처음부터 끝까지 쭉 도는 거임
      y.a();
      y.b();
    }
  });
  test('연습문제1', () {
    X obj = A();
    obj.a();
    // obj.b(); 안됨
    // obj.c(); 안됨
  });
}



// 이런 클래스가 선언되어 있다.
// 다음 물음에 답하시오
// X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오
//
//
// Y y1 = A();
// Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후
// y1.a();
// y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.