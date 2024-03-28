import 'package:learn_dart_together/24_03_27/dto/store_dto.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';

extension StoreDtoToStore on StoreDto {
  Stores toStore() {
    return Stores(
      addr: addr ?? 'unknown',
      code: code ?? 'unknown',
      createdAt: createdAt ?? 'unknown',
      lat: lat ?? 0.0,
      lng: lng ?? 0.0,
      name: name ?? 'unknown',
      remainStat: remainStat ?? 'unknown',
      stockAt: stockAt ?? 'unknown',
      type: type ?? 'unknown',
    );
  }
}
