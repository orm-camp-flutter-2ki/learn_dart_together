import 'package:learn_dart_together/240328/dto/store_dto.dart';

class MaskDto {
  num? count;
  List<StoreDto>? stores;

  MaskDto({
      this.count, 
      this.stores
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(StoreDto.fromJson(v));
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