import 'dart:convert';

import 'package:collection/collection.dart';

import '../dto/store_dto.dart';
import 'store.dart';

class Mask {
  num count;
  List<Store> stores;

  Mask({required this.count, required this.stores});

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
          stores.equals(other.stores);

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}
