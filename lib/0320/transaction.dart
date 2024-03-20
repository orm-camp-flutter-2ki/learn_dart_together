import 'trader.dart';

class Transaction {

  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  Transaction.fromJson(Map<String, dynamic> json) : trader = Trader.fromJson(json['trader']), year = json['year'], value = json['value'];

  Map<String, dynamic> toJson() => {'trader' : trader.toJson(), 'year' : year, 'value' : value};

  Transaction copyWith(Trader? trader, int? year, int? value, String? name, String? city) {
    return Transaction(
        trader ?? Trader(name ?? this.trader.name, city ?? this.trader.city),
        year ?? this.year,
        value ?? this.value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Transaction && runtimeType == other.runtimeType && trader == other.trader && year == other.year && value == other.value;

  @override
  int get hashCode => trader.hashCode ^ year.hashCode ^ value.hashCode;

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];