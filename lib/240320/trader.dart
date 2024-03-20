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

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  final transactions2011 = transactions
      .where((transaction) => transaction.year == 2011)
      .toList();
  transactions2011.sort((a, b) => a.value.compareTo(b.value));
  final traders2011 = transactions2011.map((transaction) => transaction.trader.name);
  print("1. ${traders2011.join(', ')}");

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  final cities = transactions.map((transaction) => transaction.trader.city).toSet();
  print("2. ${cities.join(', ')}");

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final cambridgeTraders = transactions
      .where((transaction) => transaction.trader.city == "Cambridge")
      .map((transaction) => transaction.trader.name)
      .toSet() // 중복 제거
      .toList(); // Set을 다시 리스트로 변환
  cambridgeTraders.sort();
  print("3. ${cambridgeTraders.join(', ')}");

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final allTraders = transactions.map((transaction) => transaction.trader.name).toSet().toList();
  allTraders.sort();
  print("4. ${allTraders.join(', ')}");

  // 5. 밀라노에 거래자가 있는가?
  final milanTraderExists = transactions.any((transaction) => transaction.trader.city == "Milan");
  print("5. ${milanTraderExists ? 'Yes' : 'No'}");

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  final cambridgeTransactions = transactions
      .where((transaction) => transaction.trader.city == "Cambridge")
      .map((transaction) => transaction.value)
      .toList();
  print("6. ${cambridgeTransactions.join(', ')}");

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  final maxValue = transactions.map((transaction) => transaction.value).reduce((a, b) => a > b ? a : b);
  print("7. $maxValue");

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  final minValue = transactions.map((transaction) => transaction.value).reduce((a, b) => a < b ? a : b);
  print("8. $minValue");
}