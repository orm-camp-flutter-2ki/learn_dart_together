import 'package:dart_cli_practice/240327/dto/mask_dto.dart';
import 'package:dart_cli_practice/240327/mapper/store_mapper.dart';
import 'package:dart_cli_practice/240327/model/mask.dart';
import 'package:dart_cli_practice/240327/model/store.dart';

extension MaskDtoToMask on MaskDto {
  Mask toMask() {
    return Mask(
        count: count ?? 0,
        //
        stores: stores != null
            ? stores!
                .where((e) => e.isValidStoreData()) // invalid 한 Store를 정제
                .map((e) => e.toStore())
                .toList()
            : <Store>[]);
  }
}
