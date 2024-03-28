import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? 'unknown',
      code: code ?? 'unknown',
      created_at: createdAt ?? 'unknown',
      lat: lat?.toDouble() ?? -1.0,
      lng: lng?.toDouble() ?? -1.0,
      name: name ?? 'unknown',
      remain_stat: remainStat ?? 'unknown',
      stock_at: stockAt ?? 'unknown',
      type: type ?? 'unknown',
    );
  }
}
