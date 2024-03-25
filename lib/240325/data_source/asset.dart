class Asset {
  final String symbol;
  final String name;
  final String exchange;
  final String assetType;
  final String ipoDate;
  final String delistingDate;
  final String status;
  Asset({
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.assetType,
    required this.ipoDate,
    required this.delistingDate,
    required this.status,
  });

  Asset copyWith({
    String? symbol,
    String? name,
    String? exchange,
    String? assetType,
    String? ipoDate,
    String? delistingDate,
    String? status,
  }) {
    return Asset(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      exchange: exchange ?? this.exchange,
      assetType: assetType ?? this.assetType,
      ipoDate: ipoDate ?? this.ipoDate,
      delistingDate: delistingDate ?? this.delistingDate,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'symbol': symbol,
      'name': name,
      'exchange': exchange,
      'assetType': assetType,
      'ipoDate': ipoDate,
      'delistingDate': delistingDate,
      'status': status,
    };
  }

  factory Asset.fromJson(Map<String, dynamic> map) {
    return Asset(
      symbol: map['symbol'] as String,
      name: map['name'] as String,
      exchange: map['exchange'] as String,
      assetType: map['assetType'] as String,
      ipoDate: map['ipoDate'] as String,
      delistingDate: map['delistingDate'] as String,
      status: map['status'] as String,
    );
  }

  @override
  String toString() {
    return 'Asset(symbol: $symbol, name: $name, exchange: $exchange, assetType: $assetType, ipoDate: $ipoDate, delistingDate: $delistingDate, status: $status)';
  }

  @override
  bool operator ==(covariant Asset other) {
    if (identical(this, other)) return true;

    return other.symbol == symbol &&
        other.name == name &&
        other.exchange == exchange &&
        other.assetType == assetType &&
        other.ipoDate == ipoDate &&
        other.delistingDate == delistingDate &&
        other.status == status;
  }

  @override
  int get hashCode {
    return symbol.hashCode ^ name.hashCode ^ exchange.hashCode ^ assetType.hashCode ^ ipoDate.hashCode ^ delistingDate.hashCode ^ status.hashCode;
  }
}
