import 'package:learn_dart_together/240328/mapper/mask_mapper.dart';

import '../data_source/mask_api.dart';
import '../model/mask.dart';
import '../model/store.dart';

abstract interface class MaskRepository {
  Future<Mask> getMaskInfo();

  Future<List<Store>> getStoreInfo();
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<Mask> getMaskInfo() async {
    final maskDto = await _api.getMaskInfo();
    final maskInfoList = maskDto.toMask();
    return maskInfoList;
  }

  @override
  Future<List<Store>> getStoreInfo() async {
    final storeDto = await _api.getStoreInfo();
    final storeInfoList = storeDto.toStore();
    return storeInfoList; // 에러...
  }
}

// main 구조 익혀두기
void main() async {
  MaskApi api = MaskApi();
  MaskRepositoryImpl maskInfoAll = MaskRepositoryImpl(api);
  print(await maskInfoAll.getMaskInfo());
}
