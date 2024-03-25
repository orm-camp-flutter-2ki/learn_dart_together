class StockInfo {
  final String symbol;
  final String name;
  final String exchange;
  final String assetType;
  final String ipoDate;
  final String status;
  final String? delistingDate;

  StockInfo({
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.assetType,
    required this.ipoDate,
    required this.status,
    this.delistingDate,
  });

  factory StockInfo.fromJson(Map<String, dynamic> json) {
    return StockInfo(
      symbol: json['symbol'],
      name: json['name'],
      exchange: json['exchange'],
      assetType: json['assetType'],
      ipoDate: json['ipoDate'],
      status: json['status'],
      delistingDate: json['delistingDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'name': name,
      'exchange': exchange,
      'assetType': assetType,
      'ipoDate': ipoDate,
      'status': status,
      'delistingDate': delistingDate,
    };
  }

  StockInfo copyWith({
    String? symbol,
    String? name,
    String? exchange,
    String? assetType,
    String? ipoDate,
    String? status,
    String? delistingDate,
  }) {
    return StockInfo(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      exchange: exchange ?? this.exchange,
      assetType: assetType ?? this.assetType,
      ipoDate: ipoDate ?? this.ipoDate,
      status: status ?? this.status,
      delistingDate: delistingDate ?? this.delistingDate,
    );
  }

  @override
  String toString() {
    return 'StockInfo{symbol: $symbol, name: $name, exchange: $exchange, assetType: $assetType, ipoDate: $ipoDate, status: $status, delistingDate: $delistingDate}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockInfo &&
          runtimeType == other.runtimeType &&
          symbol == other.symbol &&
          name == other.name &&
          exchange == other.exchange &&
          assetType == other.assetType &&
          ipoDate == other.ipoDate &&
          status == other.status &&
          delistingDate == other.delistingDate;

  @override
  int get hashCode =>
      symbol.hashCode ^
      name.hashCode ^
      exchange.hashCode ^
      assetType.hashCode ^
      ipoDate.hashCode ^
      status.hashCode ^
      delistingDate.hashCode;
}
