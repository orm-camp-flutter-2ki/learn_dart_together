import 'package:learn_dart_together/240327/model/mask.dart';
import 'package:learn_dart_together/240327/model/store.dart';
import 'package:learn_dart_together/240328/dto/mask_dto.dart';
import 'package:learn_dart_together/240328/dto/store_dto.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
      count: count ?? 0,
      stores: stores ?? <StoreDto>[],
    );
  }
}

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      created_at: createdAt ?? '',
      lat: lat ?? 0,
      lng: lng ?? 0,
      name: name ?? '',
      remain_stat: remainStat ?? '',
      stock_at: stockAt ?? '',
      type: type ?? '',
    );
  }
}
