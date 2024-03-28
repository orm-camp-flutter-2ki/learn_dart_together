class Store {
  String addr;
  String code;
  String created_at;
  num lat;
  num lng;
  String name;
  String remain_stat;
  String stock_at;
  String type;

  Store(
      {required this.addr,
      required this.code,
      required this.created_at,
      required this.lat,
      required this.lng,
      required this.name,
      required this.remain_stat,
      required this.stock_at,
      required this.type});

  @override
  String toString() {
    return 'Store{addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
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
