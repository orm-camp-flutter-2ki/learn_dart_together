import 'store_dto.dart';

/// count : 222
/// stores : [{"addr":"서울특별시 강북구 솔매로 38 (미아동)","code":"11817488","created_at":"2020/07/03 11:00:00","lat":37.6254369,"lng":127.0164096,"name":"승약국","remain_stat":"plenty","stock_at":"2020/07/02 18:05:00","type":"01"},null]

class MaskDto {
  MaskDto({
    this.count,
    this.stores,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(StoresDto.fromJson(v));
      });
    }
  }
  num? count;
  List<StoresDto>? stores;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (stores != null) {
      map['stores'] = stores?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
