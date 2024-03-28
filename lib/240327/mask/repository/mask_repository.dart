import '../model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getStores();
  Future<List<Store>> getNearByStoresTop10();
}