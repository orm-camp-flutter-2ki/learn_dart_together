import 'package:learn_dart_together/240328/dto/mask/store_dto.dart';
import 'package:learn_dart_together/240328/model/mask/store.dart';

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? 'null',
      code: code ?? 'null',
      createdAt: createdAt ?? 'null',
      lat: lat ?? 0,
      lng: lng ?? 0,
      name: name ?? 'null',
      remainStat: remainStat ?? 'null',
      stockAt: stockAt ?? 'null',
      type: type ?? 'null'
    );
  }
}
