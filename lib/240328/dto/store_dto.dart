class StoreDTO {
  String? addr;
  String? code;
  String? createdAt;
  double? lat;
  double? lng;
  String? name;
  String? adremainStatdr;
  String? stockAt;
  String? type;

  StoreDTO({
    this.addr,
    this.code,
    this.createdAt,
    this.lat,
    this.lng,
    this.name,
    this.adremainStatdr,
    this.stockAt,
    this.type,
  });

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'created_at': createdAt,
      'lat': lat,
      'lng': lng,
      'name': name,
      'adremain_statdr': adremainStatdr,
      'stock_at': stockAt,
      'type': type,
    };
  }

  factory StoreDTO.fromJson(Map<String, dynamic> map) {
    return StoreDTO(
      addr: map['addr'],
      code: map['code'],
      createdAt: map['createdAt'],
      lat: map['lat'],
      lng: map['lng'],
      name: map['name'],
      adremainStatdr: map['adremainStatdr'],
      stockAt: map['stockAt'],
      type: map['type'],
    );
  }
  StoreDTO copyWith({
    String? addr,
    String? code,
    String? createdAt,
    double? lat,
    double? lng,
    String? name,
    String? adremainStatdr,
    String? stockAt,
    String? type,
  }) {
    return StoreDTO(
      addr: addr ?? this.addr,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      adremainStatdr: adremainStatdr ?? this.adremainStatdr,
      stockAt: stockAt ?? this.stockAt,
      type: type ?? this.type,
    );
  }

  @override
  String toString() {
    return 'StoreDTO(addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, adremainStatdr: $adremainStatdr, stockAt: $stockAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoreDTO &&
        other.addr == addr &&
        other.code == code &&
        other.createdAt == createdAt &&
        other.lat == lat &&
        other.lng == lng &&
        other.name == name &&
        other.adremainStatdr == adremainStatdr &&
        other.stockAt == stockAt &&
        other.type == type;
  }

  @override
  int get hashCode {
    return addr.hashCode ^ code.hashCode ^ createdAt.hashCode ^ lat.hashCode ^ lng.hashCode ^ name.hashCode ^ adremainStatdr.hashCode ^ stockAt.hashCode ^ type.hashCode;
  }
}
