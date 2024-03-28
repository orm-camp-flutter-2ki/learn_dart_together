import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/store.dart';

class Mask {
  final int count;
  final List<Store> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  Mask.copyWith({
    required Mask origin,
    int? count,
    List<Store>? stores,
  })  : count = count ?? origin.count,
        stores = stores ?? origin.stores;

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        stores = json['stores'] == null
            ? []
            : (json['stores'] as List).map((e) => Store.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {'count': count, 'stores': stores};

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
}
