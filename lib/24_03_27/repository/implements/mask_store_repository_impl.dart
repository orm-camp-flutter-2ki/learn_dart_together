import 'package:learn_dart_together/24_03_27/data_source/mask_store_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask_store.dart';
import 'package:learn_dart_together/24_03_27/repository/interface/mask_store_repository.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_store_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/mask_store_mapper.dart';

class MaskStoreRepositoryImpl implements MaskStoreRepository {
  final MaskStoreApi _api;

  MaskStoreRepositoryImpl(this._api);

  @override
  Future<MaskStore> getStore() async {
    MaskStoreDto maskStoreDto = await _api.getMaskStore();
    MaskStore maskStore = maskStoreDto.getMaskStore();

    return maskStore;
  }

  @override
  Future<List<Store>> getStoreList() async {
    MaskStoreDto maskStoreDto = await _api.getMaskStore();
    List<Store> storeList = maskStoreDto.getMaskStore().stores.where((e) => _nullCheck(e) == true).toList();

    return storeList;
  }

  bool _nullCheck(Store dto) {
    bool result = true;

    if (dto.toString().contains('null') || dto.toString().contains('-9999')) {
      result = false;
    }

    return result;
  }
}