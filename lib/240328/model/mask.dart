import 'package:learn_dart_together/240328/dto/store_dto.dart';

class Mask {
  final int count;
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
    return 'Mask{count: $count, stores: $stores}';
  }

  Mask copyWith({
    int? count,
    List<StoreDto>? stores,
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
        stores = (json['stores'] as List<dynamic>) // 다트는 몰라서 map을 쓰기 위해 씀
            .map((e) => StoreDto.fromJson(e))
            .toList();

//</editor-fold>
}
