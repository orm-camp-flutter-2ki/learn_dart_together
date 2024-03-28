import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';

class Mask {
  final num count;
  final List<Store> store;

  const Mask({
    required this.count,
    required this.store,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          store.equals(other.store));

  @override
  int get hashCode =>
      count.hashCode ^
      store.map((e) => e.hashCode).reduce((value, element) => value ^ element);

  @override
  String toString() {
    return 'Mask{ count: $count, Store: $store,}';
  }

  Mask copyWith({
    num? count,
    List<Store>? store,
  }) {
    return Mask(
      count: count ?? this.count,
      store: store ?? this.store,
    );
  }
}
