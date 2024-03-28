import 'package:learn_dart_together/24_03_27/model/mask_store.dart';
import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';

extension StoreMapper on StoreDto {
  Store getStore() {
    return Store(
        addr: addr ?? '',
        code: code ?? '',
        createdAt: createdAt ?? '',
        lat: lat ?? 0,
        lng: lng ?? 0,
        name: name ?? '',
        remainStat: remainStat ?? '',
        stockAt: stockAt ?? '',
        type: type ?? '');
  }
}