class StockInfo {
  final String symbol;
  final String name;
  final String exchange;
  final String assetType;
  final String ipoDate;
  final String delistingDate;
  final String status;

  StockInfo(
    this.symbol,
    this.name,
    this.exchange,
    this.assetType,
    this.ipoDate,
    this.delistingDate,
    this.status,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockInfo &&
          runtimeType == other.runtimeType &&
          symbol == other.symbol;

  @override
  int get hashCode => symbol.hashCode;

  @override
  String toString() {
    return 'StockInfo{symbol: $symbol}';
  }

  StockInfo copyWith({
    String? symbol,
    String? name,
    String? exchange,
    String? assetType,
    String? ipoDate,
    String? delistingDate,
    String? status,
  }) {
    return StockInfo(
      symbol ?? this.symbol,
      name ?? this.name,
      exchange ?? this.exchange,
      assetType ?? this.assetType,
      ipoDate ?? this.ipoDate,
      delistingDate ?? this.delistingDate,
      status ?? this.status,
    );
  }

  StockInfo.fromCsv(List<dynamic> csvLine)
      : symbol = csvLine[0],
        name = csvLine[1],
        exchange = csvLine[2],
        assetType = csvLine[3],
        ipoDate = csvLine[4] ?? '',
        delistingDate = csvLine[5],
        status = csvLine[6];
}
