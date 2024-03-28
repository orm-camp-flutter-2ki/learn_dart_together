import 'package:learn_dart_together/24_03_28/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_28/mapper/mask_mapper.dart';
import 'package:learn_dart_together/24_03_28/mapper/store_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/mask.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';
import 'package:learn_dart_together/24_03_28/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<Mask> getMask() async {
    final maskDto = await _api.getMask();

    return maskDto.toMask();
  }

  @override
  Future<List<Store>> getStoreList() async {
    final storeDtoList = await _api.getStores();

    return storeDtoList
        .map((dto) => dto.toStore())
        .where((e) =>
            e.addr != 'unknown' &&
            e.code != 'unknown' &&
            e.created_at != 'unknown' &&
            e.lat != -1.0 &&
            e.lng != -1.0 &&
            e.name != 'unknown' &&
            e.remain_stat != 'unknown' &&
            e.stock_at != 'unknown' &&
            e.type != 'unknown')
        .toList();
  }
}
