import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/stores.dart';

class Mask {
  final num count;
  final List<Stores> stores;

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
          stores.equals(other.stores));

  @override
  int get hashCode =>
      count.hashCode ^
      stores.map((e) => e.hashCode).reduce((value, element) => value ^ element);

  @override
  String toString() {
    return 'Mask{ count: $count, Stores: $stores,}';
  }

  Mask copyWith({
    num? count,
    List<Stores>? stores,
  }) {
    return Mask(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores,
    };
  }

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      count: map['count'],
      stores: (map['stores'] as List)
          .map((e) => Stores.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
