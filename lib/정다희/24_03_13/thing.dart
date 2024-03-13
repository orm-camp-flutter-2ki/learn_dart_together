// 자산인지 아닌지 따지지 말고, 형태가 있는 것 (Thing) 이면, 무게가 있다
// 인터페이스는 모든 메소드는 추상 메소드여야 한다. 필드를 가지지 않는다.
// 그래서, double 형으로 무게(weight)를 얻을 수 있도록 getter/setter를 가지는 인터페이스 Thing 을 만드시오

class Weight implements Thing {
 double _weight;

 // 생성자
 Weight(this._weight);

 // Thing 인터페이스의 weight getter 구현
 @override
 double get weight => _weight;

 // Thing 인터페이스의 weight setter 구현
 @override
 set weight(double newWeight) {
  _weight = newWeight;
 }
}
// abstract interface class Thing
// class Wawa extends Thing {
 // interface 가 가장 추상화 되어 있는 개념.
// }

// 권장하는 방법.
abstract interface class Thing {
 double get weight; // weight에 대한 getter
 set weight(double value); // weight에 대한 setter
}


void main() {
 // Weight 객체 생성
 Weight myWeight = Weight(55.0);

 // weight 게터를 사용하여 무게 출력
 print("현재 무게: ${myWeight.weight}kg");

 // weight 세터를 사용하여 무게 변경
 myWeight.weight = 60.0;

 // 변경된 무게 출력
 print("변경된 무게: ${myWeight.weight}kg");
}
