import 'package:learn_dart_together/240328_homework/mapper/store_mapper.dart';

import '../data_source/mask_api.dart';
import '../model/mask.dart';
import '../model/store.dart';

void main() async {
  MaskApi api = MaskApi();
  MaskRepositoryImpl impl1 = MaskRepositoryImpl(api);
  MaskRepositoryImpl impl2 = MaskRepositoryImpl(api);
  print(await impl2.getMasks());
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Store>> getStores() async {
    final storeDto = await _api.getMasks();
    final store = storeDto.toMask();
    return store.stores;
  }

  @override
  Future<Mask> getMasks() async {
    final maskDto = await _api.getMasks();
    final mask = maskDto.toMask();
    return mask;
  }
}

abstract interface class MaskRepository {
  Future<Mask> getMasks();

  Future<List<Store>> getStores();
}
