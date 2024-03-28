import '../model/mask.dart';
import '../model/store.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();

  Future<List<Store>> getStores();
}
