// 자산인지 아닌지 따지지 말고, 형태가 있는 것 (Thing) 이면, 무게가 있다.
// 그래서, double 형으로 무게(weight)를 얻을 수 있도록
// getter/setter를 가지는 인터페이스 Thing 을 만드시오.
abstract interface class Thing {
  // 인터페이스에서는 필드 구현을 하지 않고 메소드 선언만 한다.

  double get weight;

  set weight(double value);
}
