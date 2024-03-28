import '../dto/mask_dto.dart';
import '../dto/store_dto.dart';
import '../model/store.dart';

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
        type: type ?? '');
  }
}

extension StoreToStoreDto on Store {
  StoreDto toStoreDto() {
    return StoreDto(
        //A value of type 'StoreDto' can't be returned from the method 'toStoreDto' because it has a return type of 'Store'.
        addr: addr,
        code: code,
        createdAt: created_at,
        lat: lat,
        lng: lng,
        name: name,
        remainStat: remain_stat,
        stockAt: stock_at,
        type: type);
  }
}
