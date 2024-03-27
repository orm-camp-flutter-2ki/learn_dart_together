class Store {
  final String address;
  final int code;
  final String createdAt;
  final num lat;
  final num lng;
  final String name;
  final String remainStat;
  final String stockAt;
  final String type;

  Store({
    required this.address,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

  Store.copyWith({
    required Store origin,
    String? address,
    int? code,
    String? createdAt,
    num? lat,
    num? lng,
    String? name,
    String? remainStat,
    String? stockAt,
    String? type,
  })  : address = address ?? origin.address,
        code = code ?? origin.code,
        createdAt = createdAt ?? origin.createdAt,
        lat = lat ?? origin.lat,
        lng = lng ?? origin.lng,
        name = name ?? origin.name,
        remainStat = remainStat ?? origin.remainStat,
        stockAt = stockAt ?? origin.stockAt,
        type = type ?? origin.type;

  Store.fromJson(Map<String, dynamic> json)
      : address = json['addr'] as String,
        code = int.parse(json['code']),
        createdAt = json['created_at'] ?? '',
        lat = json['lat'] as num,
        lng = json['lng'] as num,
        name = json['name'] as String,
        remainStat = json['remain_stat'] ?? '',
        stockAt = json['stock_at'] ?? '',
        type = json['type'] ?? '';

  Map<String, dynamic> toJson() => {
        'addr': address,
        'code': code,
        'created_at': createdAt,
        'lat': lat,
        'lng': lng,
        'name': name,
        'remain_stat': remainStat,
        'stock_at': stockAt,
        'type': type
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
          runtimeType == other.runtimeType &&
          address == other.address &&
          code == other.code &&
          createdAt == other.createdAt &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          remainStat == other.remainStat &&
          stockAt == other.stockAt &&
          type == other.type;

  @override
  int get hashCode =>
      address.hashCode ^
      code.hashCode ^
      createdAt.hashCode ^
      lat.hashCode ^
      lng.hashCode ^
      name.hashCode ^
      remainStat.hashCode ^
      stockAt.hashCode ^
      type.hashCode;

  @override
  String toString() {
    return 'Store{address: $address, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remainStat: $remainStat, stockAt: $stockAt, type: $type}';
  }
}
