import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/store.dart';

class Mask {
  final num count;
  final List<Store> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  Mask.copyWith({
    required Mask origin,
    num? count,
    List<Store>? stores,
  })  : count = count ?? origin.count,
        stores = stores ?? origin.stores;


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
