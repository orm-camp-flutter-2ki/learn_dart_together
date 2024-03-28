import 'package:learn_dart_together/24_03_28/mapper/mask_mapper.dart';

import '../data_source/mask_api.dart';
import '../model/store.dart';
import 'mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<List<Store>> getStores() async {
    final storeList = await _api.getStores();
    return storeList
        .where((e) => e.addr != null)
        .map((e) => e.toMask())
        .toList();
  }
}
