import 'package:learn_dart_together/240318/strongbox.dart';
import 'package:test/test.dart';

void main(){
  test('Strongbox', () {
    StrongBox<int> safeTest = StrongBox();
    safeTest.put(20);
    int? testInt = safeTest.get(); //인스턴스 생성

    expect(testInt, equals(20)); //Int가 잘 도출이 되는지 테스트
  });
}


// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨