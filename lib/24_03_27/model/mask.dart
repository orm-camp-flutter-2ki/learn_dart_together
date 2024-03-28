import 'store.dart';

class Mask {
  final int count;
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

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores,
    };
  }

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'] as int,
        stores = (json['stores'] as List<dynamic>)
            .map((e) => Store.fromJson(e))
            .toList();

//</editor-fold>
}
