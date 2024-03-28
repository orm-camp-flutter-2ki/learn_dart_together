class Stores {
  String addr;
  String code;
  String created_at;
  num lat;
  num lng;
  String name;
  String remain_stat;
  String stock_at;
  String type;

  Stores(this.addr, this.code, this.created_at, this.lat, this.lng, this.name,
      this.remain_stat, this.stock_at, this.type);

  Stores.fromJson(Map<String, dynamic> json)
      : addr = json['addr'],
        code = json['code'],
        created_at = json['created_at'] ?? '',
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        remain_stat = json['remain_stat'] ?? '',
        stock_at = json['stock_at'] ?? '',
        type = json['type'];

  Map<String, dynamic> toJson() => {
        'addr': addr,
        'code': code,
        'created_at': created_at,
        'lat': lat,
        'lng': lng,
        'name': name,
        'remain_stat': remain_stat,
        'stock_at': stock_at,
        'type': type
      };

  @override
  String toString() {
    return 'Mask{addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Stores &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          created_at == other.created_at &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          remain_stat == other.remain_stat &&
          stock_at == other.stock_at &&
          type == other.type;

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
}
