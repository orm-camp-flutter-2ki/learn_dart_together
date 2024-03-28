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
    MaskStoreDto maskStore = await _api.getMaskStore();

    return maskStore.getMaskStore();
  }
}
