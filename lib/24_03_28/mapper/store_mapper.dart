import 'package:learn_dart_together/24_03_27/model/mask_store.dart';
import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';

extension StoreMapper on StoreDto {
  Store getStore() {
    return Store(
        addr: addr ?? 'null',
        code: code ?? 'null',
        createdAt: createdAt ?? 'null',
        lat: lat ?? -9999,
        lng: lng ?? -9999,
        name: name ?? 'null',
        remainStat: remainStat ?? 'null',
        stockAt: stockAt ?? 'null',
        type: type ?? 'null');
  }
}