import '../model/store.dart';

abstract class MaskRepository {
  Future<List<Store>> getStores();
}
