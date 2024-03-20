
class Trader {
  String name;
  String city;

  Trader(this.name, this.city);


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Trader &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          city == other.city;

  @override
  int get hashCode => name.hashCode ^ city.hashCode;

  @override
  String toString() {
    return 'Trader{name: $name, city: $city}';
  }

// Trader.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       city = json['city'],
  //       trader = Trader(json['name'], json['city']);
  //
  //
  // Map<String, dynamic> toJson() =>
  //     {
  //       name: name,
  //       city: city,
  //     };

}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Transaction &&
          runtimeType == other.runtimeType &&
          trader == other.trader &&
          year == other.year &&
          value == other.value;

  @override
  int get hashCode => trader.hashCode ^ year.hashCode ^ value.hashCode;

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }

//   Transaction.fromJson(Map<String, dynamic> json)
//     : trader = Trader.fromJson(json['trader']),
//       year = json['year'],
//       value = json['value'];
//
//   Map<String, dynamic> toJson() => {
//     'trader': trader,
//     'year': year,
//     'value': value,
// };
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
//1. 2011년에 일어난 모든 트랜잭션을 찾아 가격기준 오름차순으로 정리하여 이름을 나열하시오.
//가격기준,
//오름차순
//이름만 나열

// transactions
//     .where((transaction) => transaction.year == 2011) //where 이터러블, 리스트로 바꿔야 함
//     .toList()
//     .sorted((a,b) => a.value.compareTo(b.value)) //오름차순 정렬
//     .map((transaction) => transaction.trader.name) //트렌젝션 트레이더의 이름으로 다 바꾸겠음, 스트링만 남는다
//     .forEach(print);


//2.거래자(trader)가 근무하는 모든 도시(city)를 중복없이 나열하시오
//   final cities = transactions
//       .map((transaction) => transaction.trader.city) // 모든 트랜잭션의 도시 목록을 가져온다.
//       .toSet(); // 중복된 도시를 제거하기 위해 Set으로 변환한다.

// 도시 이름을 오름차순으로 정렬하여 출력한다.
// cities.toList()..sort()..forEach(print);

//3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
//  final cambridgeTraders = transactions
//      .where((transaction) => transaction.trader.city == "Cambridge")
//     // .map((transaction) => transaction.trader.city == "Cambridge") // 케임브리지에 거주하는 거래자만
//     .map((transaction) => transaction.trader)
//     .toList()
//     .sorted((a,b) => a.name.compareTo(b.name));
//
// cambridgeTraders.forEach((trader) => print(trader.name));

// 4. 모든 거래자(trader)의 이름을 알파벳순으로 정렬하여 나열하시오
// final traderNames = transactions
//     .map((transaction) => transaction.trader.name)
//     .toList();
//
//     traderNames.sort();
//
//     traderNames.forEach(print);

//5. 밀라노에 거래자가 있는가?
//   final hasMilanTrader = transactions.any((transaction) => transaction.trader.city == "Milan");
//
//   // 결과 출력
//   if (hasMilanTrader) {
//   print("밀라노에 거래자가 있습니다.");
//   } else {
//   print("밀라노에 거래자가 없습니다.");
//   }

// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션(value)값을 출력하시오

// 케임브리지 거주 거래자의 모든 트랜잭션 값을 추출하여 List에 저장합니다.
//   final cambridgeTransactionValues = transactions
//       .where((transaction) => transaction.trader.city == "Cambridge")
//       .map((transaction) => transaction.value)
//       .toList();
//
// // 케임브리지 거래자가 없는 경우 메시지 출력
//   if (cambridgeTransactionValues.isEmpty) {
//     print("케임브리지에 거주하는 거래자가 없습니다.");
//     return;
//   }
//
// // 트랜잭션 값을 오름차순으로 정렬합니다.
//   cambridgeTransactionValues.sort();
//
// // 정렬된 트랜잭션 값 출력
//   cambridgeTransactionValues.forEach(print);


// 7. 전체 트랜잭션(value) 중 최대값은 얼마인가?

  // 모든 트랜잭션의 value 값을 추출하여 List에 저장합니다.
  // final allTransactionValues = transactions.map((transaction) => transaction.value).toList();
  //
  // // 최대값을 찾아 출력합니다.
  // final maxValue = allTransactionValues.reduce((a, b) => a > b ? a : b);
  // print("최대 트랜잭션 값:" + maxValue.toString());

// 8. 전체 트랜잭션(value) 중 최소값은 얼마인가?
  // 모든 트랜잭션의 value 값을 추출하여 List에 저장합니다.
  final allTransactionValues = transactions.map((transaction) => transaction.value).toList();

  // 최소값을 찾아 출력합니다.
  final minValue = allTransactionValues.reduce((a, b) => a < b ? a : b);
  print("최소 트랜잭션 값: " + minValue.toString());
}