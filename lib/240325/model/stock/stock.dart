class Stock {
  final String symbol;
  final String name;
  final String exchange;
  final String assetType;
  final String ipoDate;
  final String delistingDate;
  final String istatus;

  Stock(this.symbol, this.name, this.exchange, this.assetType, this.ipoDate,
      this.delistingDate, this.istatus,
  );

  Stock.fromJson(List<dynamic> json)
      : symbol = json[0],
        name = json[1],
        exchange = json[2],
        assetType = json[3],
        ipoDate = json[4] ?? '',
        delistingDate = json[5],
        istatus = json[6];

  Map<String, dynamic> toJson() =>
      {
        'symbol': symbol,
        'name': name,
        'exchange': exchange,
        'assetType': assetType,
        'ipoDate': ipoDate,
        'delistingDate': delistingDate,
        'istatus': istatus,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Stock &&
              runtimeType == other.runtimeType &&
              symbol == other.symbol &&
              name == other.name &&
              exchange == other.exchange &&
              assetType == other.assetType &&
              ipoDate == other.ipoDate &&
              delistingDate == other.delistingDate &&
              istatus == other.istatus;

  @override
  int get hashCode =>
      symbol.hashCode ^
      name.hashCode ^
      exchange.hashCode ^
      assetType.hashCode ^
      ipoDate.hashCode ^
      delistingDate.hashCode ^
      istatus.hashCode;

  @override
  String toString() {
    return 'Stock{symbol: $symbol, name: $name, exchange: $exchange, assetType: $assetType, ipoDate: $ipoDate, delistingDate: $delistingDate, istatus: $istatus}';
  }

  Stock copyWith({
    String? symbol,
    String? name,
    String? exchange,
    String? assetType,
    String? ipoDate,
    String? delistingDate,
    String? istatus,
  }) {
    return Stock(
      symbol ?? this.symbol,
      name ?? this.name,
      exchange ?? this.exchange,
      assetType ?? this.assetType,
      ipoDate ?? this.ipoDate,
      delistingDate ?? this.delistingDate,
      istatus ?? this.istatus,
    );
  }
}