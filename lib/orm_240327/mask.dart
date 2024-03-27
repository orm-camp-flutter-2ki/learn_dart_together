import 'package:learn_dart_together/orm_240327/stores.dart';

class Mask {
  final int count;
  final Stores stores;

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
          stores == other.stores);

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() {
    return 'Mask{ count: $count, stores: $stores,}';
  }

  Mask copyWith({
    int? count,
    Stores? stores,
  }) {
    return Mask(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores.toJson(),
    };
  }

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      count: map['count'] as int,
      stores: Stores.fromJson(map['stores']),
    );
  }

//</editor-fold>
}
