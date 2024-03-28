import 'package:learn_dart_together/24_03_27/model/store.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';

extension MaskDtoToMask on MaskDto {
  Store toMask() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      created_at: created_at ?? '',
      lat: lat ?? 0,
      lng: lng ?? 0,
      name: name ?? '',
      remain_stat: remain_stat ?? '',
      stock_at: stock_at ?? '',
      type: type ?? '',
    );
  }
}

extension MaskToMaskDto on Store {
  MaskDto toMaskDto() {
    return MaskDto(
      addr: addr,
      code: code,
      created_at: created_at,
      lat: lat,
      lng: lng,
      name: name,
      remain_stat: remain_stat,
      stock_at: stock_at,
      type: type,
    );
  }
}
