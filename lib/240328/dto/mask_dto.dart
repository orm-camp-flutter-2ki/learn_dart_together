import 'store_dto.dart';

class MaskDto {
  num? count;
  List<StoreDto>? stores;

  MaskDto({
    this.count,
    this.stores,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = [];
      // json['stores'].forEach((v) {
      //   stores?.add(StoreDto.fromJson(v));
      // });
      (json['stores'] as List).map((e) {
        stores?.add(StoreDto.fromJson(e));
      }).toList();
      // (json['stores'] as List).map((e) {
      //   StoreDto.fromJson(e);
      // }).toList();
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
