import 'package:learn_dart_together/240328_homework/model/mask.dart';
import 'package:learn_dart_together/240328_homework/model/store.dart';

import '../dto/mask_dto.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        stores: stores != null
            ? stores!.map((e) => e.toStore()).toList()
            : <Store>[]);
  }
}

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      address: addr ?? '',
      code: code ?? '',
      created_at: createdAt ?? '',
      lat: lat ?? -1,
      lng: lng ?? -1,
      name: name ?? '',
      remain_stat: remainStat ?? '',
      stock_at: stockAt ?? '',
      type: type ?? '',
    );
  }
}
