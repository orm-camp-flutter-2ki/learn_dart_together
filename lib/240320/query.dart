class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

// where : 조건 필터링
// map : 변환
// forEach : 전체 뺑뺑이 List 안에 있는 함수다 그 요소들을 꺼내와서 쓴다.
// reduce : 하나씩 줄이기
// fold : 하나씩 접기
// any : 있는지 없는지
// toList
// toSet : 중복 허용하지 않은
// 이터러블은 인터페이스

// void main() {
//   transactions
//       .where((x) => x.year == 2012) //6번씩 수행
//       .map((x) => x.trader.name)
//       .forEach((x) {
//     print(x);
//   });
// }
