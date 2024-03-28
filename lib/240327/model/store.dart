//     {
//     "addr": "서울특별시 강북구 솔매로 38 (미아동)",
//     "code": "11817488",
//     "created_at": "2020/07/03 11:00:00",
//     "lat": 37.6254369,
//     "lng": 127.0164096,
//     "name": "승약국",
//     "remain_stat": "plenty",
//     "stock_at": "2020/07/02 18:05:00",
//     "type": "01"
//     },

class Store {
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
  const Store({
    required this.addr,
    required this.code,
    this.created_at,
    required this.lat,
    required this.lng,
    required this.name,
    this.remain_stat,
    this.stock_at,
    required this.type,
  });

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

  @override
  String toString() {
    return 'Store{addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }

  Store copyWith({
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
    return Store(
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
      'addr': addr,
      'code': code,
      'created_at': created_at,
      'lat': lat,
      'lng': lng,
      'name': name,
      'remain_stat': remain_stat,
      'stock_at': stock_at,
      'type': type,
    };
  }

  factory Store.fromJson(Map<String, dynamic> map) {
    return Store(
      addr: map['addr'],
      code: map['code'],
      created_at: map['created_at'],
      lat: map['lat'],
      lng: map['lng'],
      name: map['name'],
      remain_stat: map['remain_stat'],
      stock_at: map['stock_at'],
      type: map['type'],
    );
  }
}
