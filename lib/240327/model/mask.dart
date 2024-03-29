import 'package:learn_dart_together/240328/dto/store_dto.dart';

class Mask {
  final num count;
  final List<StoreDto> stores;

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
    num? count,
    List<StoreDto>? stores,
  }) {
    return Mask(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

//</editor-fold>
}
