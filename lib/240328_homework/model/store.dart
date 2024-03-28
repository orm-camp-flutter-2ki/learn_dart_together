class Store {
  final String address;
  final String code;
  final String created_at;
  final num lat;
  final num lng;
  final String name;
  final String remain_stat;
  final String stock_at;
  final String type;

  const Store({
    required this.address,
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
      other is Store &&
          runtimeType == other.runtimeType &&
          address == other.address &&
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
      address.hashCode ^
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
    return 'Store{address: $address, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }
}
