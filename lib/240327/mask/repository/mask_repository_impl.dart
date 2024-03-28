import 'package:learn_dart_together/240327/mask/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/mask/model/store.dart';
import 'package:learn_dart_together/240327/mask/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Store>> getNearByStoresTop10() {
    // TODO: implement getNearByStoresTop10
    throw UnimplementedError();
  }

  @override
  Future<List<Store>> getStores() async {
    final result = await _api.getMask();
    return result.stores;
  }
}
