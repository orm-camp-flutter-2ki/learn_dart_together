import 'store_dto.dart';

class MaskDto {

  final int? count;
  final List<StoreDto>? stores;

  const MaskDto({
    required this.count,
    required this.stores,
  });

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores,
    };
  }

  factory MaskDto.fromJson(Map<String, dynamic> map) {
    return MaskDto(
      count: map['count'],
      stores: (map['stores'] as List).map((e) => StoreDto.fromJson(e)).toList(),
    );
  }
}
