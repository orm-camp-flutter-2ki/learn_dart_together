import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';

class MaskDto {
  num? count;
  List<StoreDto>? store;

  MaskDto({
    this.count,
    this.store,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    if (json['store'] != null) {
      store = [];
      json['store'].forEach((v) {
        store?.add(StoreDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (store != null) {
      map['store'] = store?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
