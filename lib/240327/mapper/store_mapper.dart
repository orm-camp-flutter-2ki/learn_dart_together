import 'package:dart_cli_practice/240327/common/extension.dart';
import 'package:dart_cli_practice/240327/dto/mask_dto.dart';
import 'package:dart_cli_practice/240327/model/store.dart';

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr!,
      code: code!,
      createdAt: createdAt!,
      lat: lat!,
      lng: lng!,
      name: name!,
      remainStat: remainStat!,
      stockAt: stockAt!,
      type: type!,
    );
  }

  bool isValidStoreData() {
    return (addr.isNotNull &&
        code.isNotNull &&
        createdAt.isNotNull &&
        lat.isNotNull &&
        lng.isNotNull &&
        name.isNotNull &&
        remainStat.isNotNull &&
        stockAt.isNotNull &&
        type.isNotNull);
  }
}
