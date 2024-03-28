import 'package:learn_dart_together/0327/dto/mask_dto.dart';
import 'package:learn_dart_together/0327/mapper/store_mapper.dart';
import 'package:learn_dart_together/0327/model/mask.dart';

/// extension 을 사용해 기능을 분리
/// 앱에서 사용할 부분
extension MaskDtoToMask on MaskDto {
  // count int or double
  // stores List<StoreDto>
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      stores: stores?.map((e) => e.toStore()).toList() ?? [],
      // fromJson()이 아니라 toStore()
      // dto 형식으로 반환하기 위해서 map 사용..
    );
  }
}

extension MaskToMaskDto on Mask {
  MaskDto toMaskDto() {
    return MaskDto(
      count: count,
      stores: stores
          .map((e) => e.toStoreDto())
          .toList(), // null이 올 수 없기 때문에 null 연산자 불필요?
    );
  }
}
