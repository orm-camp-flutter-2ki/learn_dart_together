import 'package:collection/collection.dart';

import 'package:learn_dart_together/240328/dto/store_dto.dart';

class MaskDTO {
  // nullable해야 초기화하라고 에러 안남
  num? count;
  List<StoreDTO>? stores; // DTO타입으로?

  MaskDTO({
    required this.count,
    required this.stores,
  });

  factory MaskDTO.fromJson(Map<String, dynamic> map) {
    return MaskDTO(
      count: map['count'],
      stores: (map['stores'] as List<dynamic>).map((e) => StoreDTO.fromJson(e)).toList(),
    );
    // json형태로 넣어준 걸 Store.fromJson으로 넣어서 Store형식으로 변환
    // toList-> List<Store>
    // StoreDTO의 fromJson 사용
  }
  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores?.map((e) => e.toJson()).toList(),
    };
  }

  MaskDTO copyWith({
    num? count,
    List<StoreDTO>? stores,
  }) {
    return MaskDTO(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

  @override
  String toString() => 'MaskDTO(count: $count, stores: $stores)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is MaskDTO && other.count == count && listEquals(other.stores, stores);
  }

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}
