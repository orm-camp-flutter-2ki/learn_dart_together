import 'package:learn_dart_together/24_03_27/mapper/store_mapper.dart';

import '../dto/mask_dto.dart';
import '../dto/store_dto.dart';
import '../model/mask.dart';
import '../model/store.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      stores: stores?.map((e) => e.toStore()).toList() ??
          [], //The method 'toStore' isn't defined for the type 'StoreDto'
    );
  }
}

extension MaskToMaskDto on Mask {
  MaskDto toMaskDto() {
    return MaskDto(
      count: count,
      stores: stores
          .map((e) => e.toStoreDto())
          .toList(), // The argument type 'List<Store>' can't be assigned to the parameter type 'List<StoreDto>?
    );
  }
}
