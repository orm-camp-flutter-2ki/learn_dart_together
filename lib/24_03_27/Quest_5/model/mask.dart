class DrugStore {
  final int count;
  final List<Mask> stores;

  DrugStore({
    required this.count,
    required this.stores,
  });

  factory DrugStore.fromJson(Map<String, dynamic> json) {
    return DrugStore(
      count: json['count'],
      stores: json['stores'],
    );
  }
}

class Mask {
  final String addr;
  final String code;
  final String? createdAt;
  final double lat;
  final double lng;
  final String name;
  final String? remainStat;
  final String? stockAt;
  final String type;

  const Mask({
    required this.addr,
    required this.code,
    this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    this.remainStat,
    this.stockAt,
    required this.type,
  });

  factory Mask.fromJson(Map<String, dynamic> json) {
    return Mask(
      addr: json['addr'],
      code: json['code'],
      createdAt: json['created_at'],
      lat: json['lat'].toDouble(),
      lng: json['lng'].toDouble(),
      name: json['name'],
      remainStat: json['remain_stat'],
      stockAt: json['stock_at'],
      type: json['type'],
    );
  }

  @override
  String toString() {
    return 'Mask(addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remainStat: $remainStat, stockAt: $stockAt, type: $type)';
  }

  @override
  bool operator ==(covariant Mask other) {
    if (identical(this, other)) return true;

    return other.addr == addr &&
        other.code == code &&
        other.createdAt == createdAt &&
        other.lat == lat &&
        other.lng == lng &&
        other.name == name &&
        other.remainStat == remainStat &&
        other.stockAt == stockAt &&
        other.type == type;
  }

  @override
  int get hashCode {
    return addr.hashCode ^
        code.hashCode ^
        createdAt.hashCode ^
        lat.hashCode ^
        lng.hashCode ^
        name.hashCode ^
        remainStat.hashCode ^
        stockAt.hashCode ^
        type.hashCode;
  }

  Mask copyWith({
    String? addr,
    String? code,
    String? createdAt,
    double? lat,
    double? lng,
    String? name,
    String? remainStat,
    String? stockAt,
    String? type,
  }) {
    return Mask(
      addr: addr ?? this.addr,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      remainStat: remainStat ?? this.remainStat,
      stockAt: stockAt ?? this.stockAt,
      type: type ?? this.type,
    );
  }
}
