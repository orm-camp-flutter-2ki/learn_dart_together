import 'package:learn_dart_together/240328/model/stores.dart';

class Mask {
  final int count;
  final List<Store> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      count: map['count'] as int,
      stores: (map['stores'] as List)
          .map((storeJson) => Store.fromJson(storeJson as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores.map((store) => store.toJson()).toList(),
    };
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores == other.stores;

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() => 'Mask{count: $count, stores: $stores}';
}
