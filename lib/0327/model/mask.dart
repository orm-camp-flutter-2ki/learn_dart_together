import 'package:learn_dart_together/0327/model/store.dart';

class Mask {
  final num count;
  final List<Store> stores;

//<editor-fold desc="Data Methods">
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
          stores == other.stores);

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() {
    return 'Mask{ count: $count, stores: $stores,}';
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

  Map<String, dynamic> toJson() => {
        'count': count,
        'stores': stores.map((e) => e.toJson()).toList(),
      };

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        stores =
            (json['stores'] as List).map((e) => Store.fromJson(e)).toList();
}
