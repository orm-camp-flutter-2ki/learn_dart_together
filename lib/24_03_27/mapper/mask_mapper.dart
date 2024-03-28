import 'package:learn_dart_together/24_03_27/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_27/mapper/store_mapper.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/store.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        stores: stores != null
            ? stores!.map((e) => e.toStore()).toList()
            : <Store>[]);
  }
}
