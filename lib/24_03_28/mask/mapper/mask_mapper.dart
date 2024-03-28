import 'package:learn_dart_together/24_03_27/mask.dart';

import '../../../24_03_27/store.dart';
import '../dto/mask_dto.dart';
import '../dto/store_dto.dart';

extension ToMask on MaskDto {
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      stores: stores?.map((e) => e.toStore()).toList() ?? [],
    );
  }
}

extension ToStore on StoreDto {
  Store toStore() {
    return Store(
      address: addr ?? '',
      code: int.parse(code ?? '0'),
      createdAt: createdAt ?? '',
      lat: lat ?? 0,
      lng: lng ?? 0,
      name: name ?? '',
      remainStat: remainStat ?? '',
      stockAt: stockAt ?? '',
      type: type ?? '',
    );
  }
}
