import 'package:collection/collection.dart';

import 'store.dart';

class Mask {
  final num count;
  List<Store> stores;

  Mask({required this.count, required this.stores});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores.equals(other.stores);

  @override
  int get hashCode =>
      count.hashCode ^
      stores.map((e) => e.hashCode).reduce((value, element) => value ^ element);

  @override
  String toString() {
    return 'Mask{count: $count, store: $stores}';
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
}
