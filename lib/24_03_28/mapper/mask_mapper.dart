import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';
import 'package:learn_dart_together/common/extension.dart';

extension StoreDtoMapper on StoreDto {
  /// isValid == true인 StoreDto에서만 호출할 것
  Store toStore() => (!isValid)
      ? throw Exception('유효하지 않은 StoreDto. isValid에 대해 true인 StoreDto에서 호출하세요.')
      : Store(
          type: type!,
          stockAt: stockAt!,
          remainStat: remainStat!,
          name: name!,
          lng: lng!,
          lat: lat!,
          createdAt: createdAt!,
          code: code!,
          addr: addr!);

  bool get isValid =>
      addr.isNotNull &&
      code.isNotNull &&
      createdAt.isNotNull &&
      lat.isNotNull &&
      lng.isNotNull &&
      name.isNotNull &&
      remainStat.isNotNull &&
      stockAt.isNotNull &&
      type.isNotNull;
}
