class Store {
  final String addr;
  final String code;
  final String created_at;
  final double lat;
  final double lng;
  final String name;
  final String adremain_statdr;
  final String stock_at;
  final String type;

  const Store({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.lat,
    required this.lng,
    required this.name,
    required this.adremain_statdr,
    required this.stock_at,
    required this.type,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Store &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          created_at == other.created_at &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          adremain_statdr == other.adremain_statdr &&
          stock_at == other.stock_at &&
          type == other.type);

  @override
  int get hashCode => addr.hashCode ^ code.hashCode ^ created_at.hashCode ^ lat.hashCode ^ lng.hashCode ^ name.hashCode ^ adremain_statdr.hashCode ^ stock_at.hashCode ^ type.hashCode;

  @override
  String toString() {
    return 'Store{ addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, adremain_statdr: $adremain_statdr, stock_at: $stock_at, type: $type,}';
  }

  Store copyWith({
    String? addr,
    String? code,
    String? created_at,
    double? lat,
    double? lng,
    String? name,
    String? adremain_statdr,
    String? stock_at,
    String? type,
  }) {
    return Store(
      addr: addr ?? this.addr,
      code: code ?? this.code,
      created_at: created_at ?? this.created_at,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      adremain_statdr: adremain_statdr ?? this.adremain_statdr,
      stock_at: stock_at ?? this.stock_at,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'created_at': created_at,
      'lat': lat,
      'lng': lng,
      'name': name,
      'adremain_statdr': adremain_statdr,
      'stock_at': stock_at,
      'type': type,
    };
  }

  factory Store.fromJson(Map<String, dynamic> map) {
    return Store(
      // nuill로 들어오는 데이터들 있으므로 null 처리 필수
      addr: map['addr'] ?? '',
      code: map['code'] ?? '',
      created_at: map['created_at'] ?? '',
      lat: map['lat'] ?? 0,
      lng: map['lng'] ?? 0,
      name: map['name'] ?? '',
      adremain_statdr: map['adremain_statdr'] ?? '',
      stock_at: map['stock_at'] ?? '',
      type: map['type'] ?? '',
    );
  }
}
