import '../dto/mask_dto.dart';
import '../dto/store_dto.dart';
import '../model/mask.dart';
import '../model/store.dart';

extension MaskDtoToStore on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        stores: stores != null
            //맵으로 돌고 toStored호출
            ? stores!.map((e) => e.toStore()).toList()
            : <Store>[]);
  }
}

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      createdAt: createdAt ?? '',
      lat: lat ?? -1,
      lng: lng ?? -1,
      name: name ?? 'your name',
      remainStat: remainStat ?? '',
      stockAt: stockAt ?? '',
      type: type ?? '',
    );
  }
}
