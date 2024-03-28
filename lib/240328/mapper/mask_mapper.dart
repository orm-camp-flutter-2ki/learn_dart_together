import 'package:learn_dart_together/240328/dto/mask_dto.dart';
import 'package:learn_dart_together/240328/mapper/store_mapper.dart';
import 'package:learn_dart_together/240328/model/mask/mask.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      stores: stores?.map((e) => e.toStore()).toList() ?? []
    );
  }
}