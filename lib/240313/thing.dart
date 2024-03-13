// 원래 내가 했던 코드

// abstract interface class Thing {
//   double _weight = 0.0;
//
//   //getter
//   double get weight => _weight;
//
//   //setter
//   set weight(double value) {
//     if (value < 0) {
//       throw Exception('무게가 0보다 커야 합니다');
//     }
//     _weight = value;
//   }
// }
/*
 위에 코드에 필드에 값을 넣어버렸다.

 인터페이스는 필드를 가지지 않음으로 get,set을 설정만 하고,
 implements를 통하여, 계산할 수 있다!

 */
//수정 받은 코드
abstract interface class Thing {
  //getter
  double get weight;

  //setter
  set weight(double value);
}
