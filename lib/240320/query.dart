import 'package:collection/collection.dart';
import 'dart:math';

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

void main(){

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
 final cambridgeTraders = transactions
     .where((transaction) => transaction.trader.city == "Cambridge")
    // .map((transaction) => transaction.trader.city == "Cambridge") // 케임브리지에 거주하는 거래자만
    .map((transaction) => transaction.trader)
    .toList()
    .sorted((a,b) => a.name.compareTo(b.name));

cambridgeTraders.forEach((trader) => print(trader.name));
}