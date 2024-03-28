import 'package:learn_dart_together/240327/model/stores.dart';

class Mask {
  final int count;
  final List<Stores> stores;

  Mask(this.count, this.stores);

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores.map((store) => store.toJson()),
    };
  }

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      map['count'] as int,
      // 왜 List 형으로 변환 하여야 하나?
      // first, last 처럼 형변환이 되어야
      // mapping 해서 fromjson 형태로 전환할 수 있기 때문!
      (map['stores'] as List).map((e) => Stores.fromJson(e)).toList(),
    );
  }

  Mask copyWith({int? count, List<Stores>? stores}) {
    return Mask(
      count ?? this.count,
      stores ?? this.stores,
    );
  }

  @override
  String toString() {
    return 'Mask{count: $count, stores: $stores}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores == other.stores;

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}
