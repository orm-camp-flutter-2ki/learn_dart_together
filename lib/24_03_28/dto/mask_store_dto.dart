import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';

class MaskStoreDto {
  num? count;
  List<StoreDto>? stores;

  MaskStoreDto({
    this.count,
    this.stores,
  });

  MaskStoreDto.fromJson(dynamic json) {
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
