import 'package:collection/collection.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  Map<String, dynamic> toJson() => {
        'name': name,
        'city': city,
      };

  Trader.fromJason(Map<String, dynamic> json)
      : name = json['name'],
        city = json['city'];

// Trader copyWith ({String? name, String? city}){
//   return Trader(name : name ?? this.name, city : city ?? this.city);
// }
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return 'trader:$trader year:$year value:$value ';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Transaction &&
          trader == other.trader &&
          year == other.year &&
          value == other.value;

  @override
  int get hashCode => trader.hashCode ^ year.hashCode ^ value.hashCode;

  Transaction.fromJason(Map<String, dynamic> json)
      : year = json['year'],
        value = json['value'],
        trader = Trader.fromJason(json['trader']);

  Map<String, dynamic> toJson() => {
        'trader': trader,
        'year': year,
        'value': value,
      };

// Transaction copyWith ({Trader? trader, int? year, int? value}){
//   return Transaction(trader : trader ?? this.trader, year : year ?? this.year, value : value??this.value);
// }
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];
