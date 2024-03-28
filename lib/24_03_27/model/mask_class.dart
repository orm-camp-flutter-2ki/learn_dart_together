class Mask {
  final String addr;
  final String code;
  final String created_at;
  final String lat;
  final String name;
  final String remain_stat;
  final String stock_at;
  final String type;


  const Mask({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.lat,
    required this.name,
    required this.remain_stat,
    required this.stock_at,
    required this.type,

  });

  @override
  String toString() {
    return 'Mask{addr: $addr, code: $code, created_at: $created_at, lat: $lat, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }

  @override
  int get hashCode =>
      addr.hashCode ^ code.hashCode ^ created_at.hashCode ^ lat.hashCode ^ name
          .hashCode ^ remain_stat.hashCode ^ stock_at.hashCode ^ type.hashCode;


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Mask && runtimeType == other.runtimeType &&
              addr == other.addr && code == other.code &&
              created_at == other.created_at && lat == other.lat &&
              name == other.name && remain_stat == other.remain_stat &&
              stock_at == other.stock_at && type == other.type;


  Map<String, dynamic> toJson() => {
  'addr':addr,
  'code': code,
  'created_at': created_at,
  'lat': lat,
  'name':name,
  'remain_stat': remain_stat,
  'stock_at': stock_at,
  'type': type,
};


  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      addr: map['addr'] as String,
      code: map['code'] as String,
      created_at: map['created_at'] as String,
      lat: map['lat'] as String,
      name: map['name'] as String,
      remain_stat: map['remain_stat'] as String,
      stock_at: map['stock_at'] as String,
      type: map['type'] as String,
    );
  }
}
