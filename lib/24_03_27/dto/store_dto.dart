class StoreDto {
  StoreDto({
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

  StoreDto.fromJson(dynamic json) {
    addr = json['addr'];
    code = json['code'];
    createdAt = json['created_at'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    remainStat = json['remain_stat'];
    stockAt = json['stock_at'];
    type = json['type'];
  }

  String? addr;
  String? code;
  String? createdAt;
  num? lat;
  num? lng;
  String? name;
  String? remainStat;
  String? stockAt;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['addr'] = addr;
    map['code'] = code;
    map['created_at'] = createdAt;
    map['lat'] = lat;
    map['lng'] = lng;
    map['name'] = name;
    map['remain_stat'] = remainStat;
    map['stock_at'] = stockAt;
    map['type'] = type;
    return map;
  }
}
