import 'package:learn_dart_together/orm_240328/02_dto/stores_dto.dart';

class MaskDto {
  num? count;
  List<StoreDto>? stores;

  MaskDto({
    this.count,
    this.stores,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'] as int;
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(StoreDto?.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (stores != null) {
      map['stores'] = stores?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

// class StoreDto {
//   String? addr;
//   String? code;
//   String? createdAt;
//   num? lat;
//   num? lng;
//   String? name;
//   String? remainStat;
//   String? stockAt;
//   String? type;
//
//   StoreDto({
//     this.addr,
//     this.code,
//     this.createdAt,
//     this.lat,
//     this.lng,
//     this.name,
//     this.remainStat,
//     this.stockAt,
//     this.type,
//   });
//
//   StoreDto.fromJson(dynamic json) {
//     addr = json['addr'];
//     code = json['code'];
//     createdAt = json['created_at'];
//     lat = json['lat'];
//     lng = json['lng'];
//     name = json['name'];
//     remainStat = json['remain_stat'];
//     stockAt = json['stock_at'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['addr'] = addr;
//     map['code'] = code;
//     map['created_at'] = createdAt;
//     map['lat'] = lat;
//     map['lng'] = lng;
//     map['name'] = name;
//     map['remain_stat'] = remainStat;
//     map['stock_at'] = stockAt;
//     map['type'] = type;
//     return map;
//   }
// }
