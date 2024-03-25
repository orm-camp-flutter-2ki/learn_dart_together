class Stock {
  String symbol;
  String name;
  String exchange;
  String assetType;
  String ipoDate;
  String delistingDate;
  String istatus;

  Stock({
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.assetType,
    required this.ipoDate,
    required this.delistingDate,
    required this.istatus,
  });

  @override
  String toString() {
    return 'Stock{symbol: $symbol, name: $name, exchange: $exchange, assetType: $assetType, ipoDate: $ipoDate, delistingDate: $delistingDate, istatus: $istatus}';
  }

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
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      exchange: exchange ?? this.exchange,
      assetType: assetType ?? this.assetType,
      ipoDate: ipoDate ?? this.ipoDate,
      delistingDate: delistingDate ?? this.delistingDate,
      istatus: istatus ?? this.istatus,
    );
  }

  Map<String, dynamic> toJson() => {
        'symbol': symbol,
        'name': name,
        'exchange': exchange,
        'assetType': assetType,
        'ipoDate': ipoDate,
        'delistingDate': delistingDate,
        'istatus': istatus,
      };

  Stock.fromJson(List<dynamic> json)
      : symbol = json[0],
        name = json[1],
        exchange = json[2],
        assetType = json[3],
/*        ipoDate = json[4] == null ? new DateTime(0, 0, 0, 0, 0, 0, 0, 0) : DateTime.parse(json[4]),
        delistingDate = DateTime.parse(), */
        ipoDate = json[4] == null ? '' : json[4],
        delistingDate = json[5],
        istatus = json[6];
}
