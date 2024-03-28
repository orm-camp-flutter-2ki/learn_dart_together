import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';

extension ToMask on MaskDto {
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      stores: stores ?? [],
    );
  }
}
