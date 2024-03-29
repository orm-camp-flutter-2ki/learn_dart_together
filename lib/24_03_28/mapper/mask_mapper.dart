import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/store_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/mask.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      store: store?.map((e) => e.toStore()).toList() ?? [],
    );
  }
}
