import 'store.dart';

class Mask {
  final int count;
  final List<Store> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  Mask copyWith({
    int? count,
    List<Store>? stores,
  }) =>
      Mask(
        count: count ?? this.count,
        stores: stores ?? this.stores,
      );

  factory Mask.fromJson(Map<String, dynamic> json) => Mask(
        count: json["count"],
        stores: List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "stores": List<dynamic>.from(stores.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'MaskStore{count: $count, stores: $stores}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores == other.stores;

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}
