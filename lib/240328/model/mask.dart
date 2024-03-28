import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:learn_dart_together/240328/model/store.dart';

class Mask {
  final int count;
  final List<Store> stores;

  const Mask({
    required this.count,
    required this.stores,
  });

  @override
  String toString() => 'Mask(count: $count, stores: $stores)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Mask && other.count == count && listEquals(other.stores, stores);
  }

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}
