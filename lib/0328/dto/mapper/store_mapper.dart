import '../../model/store.dart';
import '../store_dto.dart';

extension Mapper on StoreDto {
  Store toStore() {
    return Store(addr: addr!,
        code: code!,
        createdAt: createdAt!,
        lat: lat!,
        lng: lng!,
        name: name!,
        remainStat: remainStat!,
        stockAt: stockAt!,
        type: type!);
  }
}