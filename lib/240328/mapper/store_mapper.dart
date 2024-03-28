import 'package:learn_dart_together/240328/dto/store_dto.dart';
import 'package:learn_dart_together/240328/model/store.dart';

extension StoreDTOtoStore on StoreDTO {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      created_at: createdAt ?? '',
      lat: lat ?? -1,
      lng: lng ?? -1,
      name: name ?? '',
      adremain_statdr: adremainStatdr ?? '',
      stock_at: stockAt ?? '',
      type: type ?? '',
    );
  }
}
