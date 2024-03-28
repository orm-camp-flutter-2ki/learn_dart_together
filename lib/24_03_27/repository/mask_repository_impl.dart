import 'package:learn_dart_together/24_03_27/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_27/mapper/mask_mapper.dart';
import 'package:learn_dart_together/24_03_27/model/store.dart';
import 'mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Store>> getStores() async {
    final maskDto = await _api.getMasks();

    final storeList = maskDto.toMask();

    return storeList.stores;
  }
}
