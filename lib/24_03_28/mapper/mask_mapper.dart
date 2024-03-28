import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/store_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/mask.dart';

extension MaskDtoToMask on MaskDto {
  // count int or double
  // stores List<StoreDto>
  Mask toMask() {
    return Mask(
      count: count?.toInt() ?? -1,
      stores: stores?.map((e) => e.toStore()).toList() ?? [],
    );
  }
}
