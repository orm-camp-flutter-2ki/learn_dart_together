import 'package:learn_dart_together/240328/mapper/mask_mapper.dart';

import '../data_source/mask_api.dart';
import '../model/mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMaskInfo();
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
}

// main 구조 익혀두기
void main() async {
  MaskApi api = MaskApi();
  MaskRepositoryImpl maskInfoAll = MaskRepositoryImpl(api);
  print(await maskInfoAll.getMaskInfo());
}
