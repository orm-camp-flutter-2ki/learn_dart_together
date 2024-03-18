import 'package:learn_dart_together/240318/strongbox.dart';
import 'package:test/test.dart';

void main() {
  test('padlock', () {
    StrongBox box = StrongBox(key: KeyType.padlock); //StrongBox 클래스의 padlock을 테스트
    box.put('물건'); //인스턴스에 물건이라는 문자열 넣음

    expect(box.get(), null); //box.get()이 null 반환하는지 확인

    for (int i = 0; i < 1025; i++) { //반복문 실행 get 호출. 반환값 무시
      box.get(); //반환될 수 있는지 확인
    }
    expect(box.get(), '물건');
  });
  test('padlock', () {
    StrongBox box = StrongBox(key: KeyType.dial); //StrongBox 클래스의 padlock을 테스트
    box.put('물건'); //인스턴스에 물건이라는 문자열 넣음

    expect(box.get(), null); //box.get()이 null 반환하는지 확인

    for (int i = 0; i < 30001; i++) { //반복문 실행 get 호출. 반환값 무시
      box.get(); //반환될 수 있는지 확인
    }
    expect(box.get(), '물건');
  });
}


// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨
