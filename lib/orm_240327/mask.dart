import 'package:collection/collection.dart';
import 'package:learn_dart_together/orm_240327/stores.dart';

class Mask {
  final int count;
  final List<Stores> stores;

//<editor-fold desc="Data Methods">
  Mask({
    required this.count,
    required this.stores,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores.equals(other.stores));

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() {
    return 'Mask{ count: $count, stores: $stores,}';
  }

  Mask copyWith({
    int? count,
    List<Stores>? stores,
  }) {
    return Mask(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': this.count,
      'stores': this.stores,
    };
  }

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      count: map['count'] as int,
      stores: (map['stores'] as List<dynamic>)
          .map((e) => Stores.fromJson(e))
          .toList(),
    );
  }

//</editor-fold>
}
