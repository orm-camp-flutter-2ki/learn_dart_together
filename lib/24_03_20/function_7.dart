import 'dart:math';
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


// 7. 전체 트랜잭션 중 최대값은 얼마인가?
void main() {
  print(transactions
      .map((transaction) => transaction.value) // 각 거래의 값을 추출하여 리스트로 변환
      .reduce((e, v) => max(e, v))); // 추출된 값들 중에서 최대값을 찾음
}