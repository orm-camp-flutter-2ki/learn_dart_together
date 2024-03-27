class Store {
  final String addr;
  final String code;
  final String created_at;
  final double lat;
  final double lng;
  final String name;
  final String remain_stat;
  final String stock_at;
  final String type;

  Store({
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

  Store.copyWith({
    required Store origin,
    String? addr,
    String? code,
    String? created_at,
    double? lat,
    double? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    String? type,
  })  : addr = addr ?? origin.addr,
        code = code ?? origin.code,
        created_at = created_at ?? origin.created_at,
        lat = lat ?? origin.lat,
        lng = lng ?? origin.lng,
        name = name ?? origin.name,
        remain_stat = remain_stat ?? origin.remain_stat,
        stock_at = stock_at ?? origin.stock_at,
        type = type ?? origin.type;

  Store.fromJson(Map<String, dynamic> json)
      : addr = json['addr'] ?? '',
        code = json['code'] ?? '',
        created_at = json['created_at'] ?? '',
        lat = json['lat'] ?? 0,
        lng = json['lng'] ?? 0,
        name = json['name'] ?? '',
        remain_stat = json['remain_stat'] ?? '',
        stock_at = json['stock_at'] ?? '',
        type = json['type'] ?? '';

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
    return 'Stores{addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
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
