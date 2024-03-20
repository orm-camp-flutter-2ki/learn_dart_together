import 'package:learn_dart_together/24_03_20/query/trader.dart';

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

  Transaction copyWith(Trader? trader, int? year, int? value) {
    return Transaction(
        trader ?? this.trader, year ?? this.year, value ?? this.value);
  }

  Transaction.fromJson(Map<String, dynamic> json)
      : trader = json['trader'],
        year = json['year'],
        value = json['value'];

  Map<String, dynamic> toJson() =>
      {'trader': trader.toJson(), 'year': year, 'value': value};
}
