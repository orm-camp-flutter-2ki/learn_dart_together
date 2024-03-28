import 'package:learn_dart_together/24_03_28/datasource/mask_api.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';

abstract interface class MaskRepository {
  MaskApi api;

  MaskRepository(this.api);

  Future<List<Store>> getStores();
}

class MaskRepositoryImpl implements MaskRepository {
  @override
  MaskApi api;

  MaskRepositoryImpl(this.api);

  @override
  Future<List<Store>> getStores() async {
    List<Store> stores = [];
    try {
      stores = (await api.getStores());
    } catch (e) {
      print(e.toString());
    }
    return stores;
  }
}
