import 'package:learn_dart_together/0328/dto/mapper/store_mapper.dart';
import 'package:learn_dart_together/0328/dto/store_dto.dart';
import 'package:learn_dart_together/0328/dto/validator/store_validator.dart';
import 'package:learn_dart_together/0328/model/store.dart';

import '../../model/mask.dart';
import '../mask_dto.dart';

extension Mapper on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        stores: stores?.where((e) => e.validate() == true)
                .map((e) => e.toStore()).toList() ?? []);
  }
}
