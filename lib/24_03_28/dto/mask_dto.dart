import '../../24_03_27/store.dart';

class MaskDto {
  num? count;
  List<Store>? stores;

  MaskDto({
    this.count,
    this.stores,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(Store.fromJson(v));
      });
    }
  }

  MaskDto copyWith({
    num? count,
    List<Store>? stores,
  }) =>
      MaskDto(
        count: count ?? this.count,
        stores: stores ?? this.stores,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (stores != null) {
      map['stores'] = stores?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
