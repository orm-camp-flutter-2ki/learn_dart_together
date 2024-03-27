import '../data_source/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getStores();
}
