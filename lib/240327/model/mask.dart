// http://104.198.248.76:3000/mask
// {
//   "count": 222,
//   "stores": [
//     {
//     "addr": "서울특별시 강북구 솔매로 38 (미아동)",
//     "code": "11817488",
//     "created_at": "2020/07/03 11:00:00",
//     "lat": 37.6254369,
//     "lng": 127.0164096,
//     "name": "승약국",
//     "remain_stat": "plenty",
//     "stock_at": "2020/07/02 18:05:00",
//     "type": "01"
//     },
//   ]
// }

import 'package:collection/collection.dart';
import 'package:dart_cli_practice/240327/model/store.dart';

class Mask {
  final int count;
  final List<Store> stores;

  const Mask({
    required this.count,
    required this.stores,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores.equals(other.stores);

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() {
    return 'Mask{count: $count, stores: $stores}';
  }

  Mask copyWith({
    int? count,
    List<Store>? stores,
  }) {
    return Mask(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores,
    };
  }

  factory Mask.fromJson(Map<String, dynamic> json) {
    return Mask(
      count: json['count'] as int,
      stores: (json['stores'] as List).map((e) => Store.fromJson(e)).toList(),
    );
  }
}
