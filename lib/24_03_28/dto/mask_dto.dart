/// addr : "서울특별시 강북구 솔매로 38 (미아동)"
/// code : "11817488"
/// created_at : "2020/07/03 11:00:00"
/// lat : 37.6254369
/// lng : 127.0164096
/// name : "승약국"
/// remain_stat : "plenty"
/// stock_at : "2020/07/02 18:05:00"
/// type : "01"

class MaskDto {
  String? addr;
  String? code;
  String? created_at;
  num? lat;
  num? lng;
  String? name;
  String? remain_stat;
  String? stock_at;
  String? type;

  MaskDto({
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

  MaskDto copyWith({
    String? addr,
    String? code,
    String? created_at,
    num? lat,
    num? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    String? type,
  }) =>
      MaskDto(
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

  MaskDto.fromJson(dynamic json) {
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
