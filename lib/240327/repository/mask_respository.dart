import '../model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getMaskStores();
}