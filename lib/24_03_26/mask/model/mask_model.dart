class MaskModel {
  final String addr;
  final String code;
  final double lat;
  final double lng;
  final String name;
  final String type;
  final String? created_at;
  final String? remain_stat;
  final String? stock_at;

//<editor-fold desc="Data Methods">
  const MaskModel({
    required this.addr,
    required this.code,
    required this.lat,
    required this.lng,
    required this.name,
    required this.type,
    this.created_at,
    this.remain_stat,
    this.stock_at,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaskModel &&
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
    return 'MaskModel{ addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type,}';
  }

  MaskModel copyWith({
    String? addr,
    String? code,
    String? created_at,
    double? lat,
    double? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    String? type,
  }) {
    return MaskModel(
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

  factory MaskModel.fromJson(Map<String, dynamic> map) {
    return MaskModel(
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
