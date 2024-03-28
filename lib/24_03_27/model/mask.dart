import 'package:learn_dart_together/24_03_27/model/store.dart';

class Mask {
  final int count;
  final List<Store> stores;

  // <editor-fold desc="Data Methods">
  const Mask({
    required this.count,
    required this.stores,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores == other.stores);

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() {
    return 'Mask{ count: $count, stores: $stores,}';
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

  factory Mask.fromJson(Map<String, dynamic> json) {
    return Mask(
      count: json['count'],
      // List로 안하면 맵 타입으로만 보여서. map을 쓰기 위해서
      stores: (json['stores'] as List).map((e) => Store.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores,
    };
  }

//</editor-fold>
}
