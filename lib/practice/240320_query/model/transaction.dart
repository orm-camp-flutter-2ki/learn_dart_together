import 'trader.dart';

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }

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
}
