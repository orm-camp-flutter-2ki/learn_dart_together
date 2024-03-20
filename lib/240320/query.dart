import 'dart:convert';
import 'package:learn_dart_together/240320/query.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  bool operator ==(covariant Trader other) {
    if (identical(this, other)) return true;

    return other.name == name && other.city == city;
  }

  @override
  int get hashCode => name.hashCode ^ city.hashCode;

  @override
  String toString() => 'Trader(name: $name, city: $city)';

  Map<String, dynamic> tojson() {
    return <String, dynamic>{
      'name': name,
      'city': city,
    };
  }

  Trader.fromMap(Map<String, dynamic> json)
      : name = json['name'],
        city = json['city'];

  Trader copyWith({
    String? name,
    String? city,
  }) {
    return Trader(
      name ?? this.name,
      city ?? this.city,
    );
  }
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  bool operator ==(covariant Transaction other) {
    if (identical(this, other)) return true;

    return other.trader == trader && other.year == year && other.value == value;
  }

  @override
  int get hashCode => trader.hashCode ^ year.hashCode ^ value.hashCode;

  @override
  String toString() =>
      'Transaction(trader: $trader, year: $year, value: $value)';

  Transaction copyWith({
    Trader? trader,
    int? year,
    int? value,
  }) {
    return Transaction(
      trader ?? this.trader,
      year ?? this.year,
      value ?? this.value,
    );
  }

  Map<String, dynamic> tojson() {
    return <String, dynamic>{
      'trader': trader.tojson(),
      'year': year,
      'value': value,
    };
  }

  Transaction.fromJson(Map<String, dynamic> json)
      : trader = json['trader'],
        year = json['year'],
        value = json['value'];
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];
