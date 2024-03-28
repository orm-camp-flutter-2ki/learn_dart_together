import 'package:learn_dart_together/240328/mapper/store_mapper.dart';

import '../dto/mask_dto.dart';
import '../model/mask.dart';
import '../model/store.dart';

extension MaskDtoToStore on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        stores: stores != null
            //맵으로 돌고 toStored호출
            ? stores!.map((e) => e.toStore()).toList()
            : <Store>[]);
  }
}
