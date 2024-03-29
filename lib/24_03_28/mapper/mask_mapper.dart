import '../dto/mask_dto.dart';
import '../model/store.dart';

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      createdAt: createdAt ?? '',
      lat: lat?.toDouble() ?? 0.0,
      lng: lng?.toDouble() ?? 0.0,
      name: name ?? '',
      remainStat: remainStat ?? '',
      stockAt: stockAt ?? '',
      type: type ?? '',
    );
  }
}

extension MaskDtoToDrugStore on MaskDto {
  DrugStore toDrugStore() {
    return DrugStore(
      count: count ?? 0,
      stores: stores != null ? stores!.map((e) => e.toStore()).toList() : [],
    );
  }
}
