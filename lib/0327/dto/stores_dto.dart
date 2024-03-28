class StoreDto {
  String? addr;
  String? code;
  String? created_at;
  num? lat;
  num? lng;
  String? name;
  String? remain_stat;
  String? stock_at;
  String? type;

  StoreDto({
    this.addr,
    this.code,
    this.created_at,
    this.lat,
    this.lng,
    this.name,
    this.remain_stat,
    this.stock_at,
    this.type,
  });

  StoreDto.fromJson(dynamic json) {
    addr = json['addr'];
    code = json['code'];
    created_at = json['created_at'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    remain_stat = json['remain_stat'];
    stock_at = json['stock_at'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['addr'] = addr;
    map['code'] = code;
    map['created_at'] = created_at;
    map['lat'] = lat;
    map['lng'] = lng;
    map['name'] = name;
    map['remain_stat'] = remain_stat;
    map['stock_at'] = stock_at;
    map['type'] = type;
    return map;
  }
}
