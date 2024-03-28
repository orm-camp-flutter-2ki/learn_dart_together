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
  final String createdAt;
  final num lat;
  final num lng;
  final String name;
  final String remainStat;
  final String stockAt;
  final String type;

//<editor-fold desc="Data Methods">
  const Store({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
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
      addr.hashCode ^
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
    return 'Store{addr: $addr, code: $code, created_at: $createdAt, lat: $lat, lng: $lng, name: $name, remain_stat: $remainStat, stock_at: $stockAt, type: $type}';
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
      createdAt: created_at ?? this.createdAt,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      remainStat: remain_stat ?? this.remainStat,
      stockAt: stock_at ?? this.stockAt,
      type: type ?? this.type,
    );
  }
}
