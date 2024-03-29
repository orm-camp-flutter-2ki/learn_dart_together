import 'package:learn_dart_together/24_03_27/apis/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:learn_dart_together/24_03_27/repositories/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _maskApi;

  MaskRepositoryImpl({required MaskApi maskApi}) : _maskApi = maskApi;

  @override
  Future<Mask> getMask() async {
    return await _maskApi.getMask();
  }

  @override
  Future<List<Stores>> getStores() async {
    Mask mask = await getMask();

    return mask.stores.where(_filterNonNullStore).toList();
  }

  bool _filterNonNullStore(Stores store) {
    String unknown = 'unknown';
    num unknownNum = 0.0;
    bool result = false;
    if (store.addr != unknown &&
        store.code != unknown &&
        store.lat != unknownNum &&
        store.lng != unknownNum &&
        store.name != unknown &&
        store.remainStat != unknown &&
        store.stockAt != unknown &&
        store.type != unknown &&
        store.createdAt != unknown) {
      result = true;
    }
    return result;
  }
}
