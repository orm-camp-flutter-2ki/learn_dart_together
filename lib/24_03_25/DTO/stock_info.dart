class Stocks {
  final List<Stock> stockInfoList;

  Stocks({required this.stockInfoList});

  Stocks.fromCsv(List<List<dynamic>> json)
      : stockInfoList = json.map((e) => Stock.fromCsv(e)).toList();

  List<List<dynamic>> toJson() =>
    stockInfoList.map((e) => e.toJson()).toList();


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Stocks &&
              runtimeType == other.runtimeType &&
              stockInfoList == other.stockInfoList;

  @override
  int get hashCode => stockInfoList.hashCode;

  @override
  String toString() {
    return 'Stocks{stockInfoList: $stockInfoList}';
  }
}

class Stock {
  String symbol;
  String name;
  String exchange;
  String assertType;
  String ipoDate;
  String delistingDate;
  String status;

  Stock({required this.symbol,
    required this.name,
    required this.exchange,
    required this.assertType,
    required this.ipoDate,
    required this.delistingDate,
    required this.status});

  Stock.fromCsv(List<dynamic> json)
      : symbol = json[0],
        name = json[1],
        exchange = json[2],
        assertType = json[3],
        ipoDate = json[4],
        delistingDate = json[5],
        status = json[6];

  List<dynamic> toJson() =>
      [
        symbol, name, exchange, assertType, ipoDate, delistingDate, status
      ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Stock &&
              runtimeType == other.runtimeType &&
              symbol == other.symbol &&
              name == other.name &&
              exchange == other.exchange &&
              assertType == other.assertType &&
              ipoDate == other.ipoDate &&
              delistingDate == other.delistingDate &&
              status == other.status;

  @override
  int get hashCode =>
      symbol.hashCode ^
      name.hashCode ^
      exchange.hashCode ^
      assertType.hashCode ^
      ipoDate.hashCode ^
      delistingDate.hashCode ^
      status.hashCode;

  @override
  String toString() {
    return 'Stock{symbol: $symbol, name: $name, exchange: $exchange, assertType: $assertType, ipoDate: $ipoDate, delistingDate: $delistingDate, status: $status}';
  }
}
