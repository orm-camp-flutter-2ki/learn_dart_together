import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';

class MaskDto {
  num? count;
  List<StoreDto>? stores;

  MaskDto({
    this.count,
    this.stores,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    stores = (json['stores'] as List).map((e) => StoreDto.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    // if (stores != null) {
    //   map['stores'] = stores?.map((v) => v.toJson()).toList();
    // }
    map['stores'] = stores;
    return map;
  }
}
