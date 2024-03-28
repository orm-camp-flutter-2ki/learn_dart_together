import 'package:learn_dart_together/24_03_28/model/mask.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();

  Future<List<Store>> getStoreList();
}
