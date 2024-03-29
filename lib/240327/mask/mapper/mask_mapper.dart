import 'package:learn_dart_together/240327/mask/dto/mask_dto.dart';

import '../model/store.dart';

extension ToStore on StoreDto {
  Store toStore() {
    return Store(
      name: name ?? '',
      address: addr ?? '',
      stockAt: stockAt ?? '',
      remainStatus: remainStat ?? '',
    );
  }
}
