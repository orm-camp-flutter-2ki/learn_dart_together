import 'y.dart';
import 'a.dart';
import 'b.dart';

void main() {
  // List 변수의 타입 = Y
  List<Y> ormList = [];

  // A & B 인스턴스 생성해서 List에 담기
  ormList.add(A());
  ormList.add(B());

  // b() 메서드 호출
  ormList.forEach((ormList) {
    ormList.b();
  });
}
