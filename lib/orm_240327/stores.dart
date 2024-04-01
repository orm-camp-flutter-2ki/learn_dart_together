class Stores {
  final String addr;
  final String code;
  final String? created_at;
  final num lat;
  final num lng;
  final String name;
  final String? remain_stat;
  final String? stock_at;
  final String type;

//<editor-fold desc="Data Methods">
  const Stores({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remain_stat,
    required this.stock_at,
    required this.type,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stores &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          created_at == other.created_at &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          remain_stat == other.remain_stat &&
          stock_at == other.stock_at &&
          type == other.type);

  @override
  int get hashCode =>
      addr.hashCode ^
      code.hashCode ^
      created_at.hashCode ^
      lat.hashCode ^
      lng.hashCode ^
      name.hashCode ^
      remain_stat.hashCode ^
      stock_at.hashCode ^
      type.hashCode;

  @override
  String toString() {
    return 'Stores{ addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type,}';
  }

  Stores copyWith({
    String? addr,
    String? code,
    String? created_at,
    num? lat,
    num? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    String? type,
  }) {
    return Stores(
      addr: addr ?? this.addr,
      code: code ?? this.code,
      created_at: created_at ?? this.created_at,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      remain_stat: remain_stat ?? this.remain_stat,
      stock_at: stock_at ?? this.stock_at,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'addr': this.addr,
      'code': this.code,
      'created_at': this.created_at,
      'lat': this.lat,
      'lng': this.lng,
      'name': this.name,
      'remain_stat': this.remain_stat,
      'stock_at': this.stock_at,
      'type': this.type,
    };
  }

  factory Stores.fromJson(Map<String, dynamic> map) {
    return Stores(
      addr: map['addr'] as String,
      code: map['code'] as String,
      created_at: map['created_at'] ?? '',
      lat: map['lat'] as num,
      lng: map['lng'] as num,
      name: map['name'] as String,
      remain_stat: map['remain_stat'] ?? '',
      stock_at: map['stock_at'] ?? '',
      type: map['type'] as String,
    );
  }

//</editor-fold>
}
