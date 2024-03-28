import 'package:learn_dart_together/orm_240328/02_dto/mask_dto.dart';
import 'package:learn_dart_together/orm_240328/02_model/mask.dart';

import '../02_dto/stores_dto.dart';
import '../02_model/stores.dart';

extension StoreDtoToStore on StoreDto {
  Stores toStores() {
    return Stores(
      addr: addr ?? '',
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

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        stores: stores != null
            ? stores!.map((e) => e.toStores()).toList()
            : <Stores>[]);
  }
}
