import 'package:learn_dart_together/240328/model/stores.dart';

import '../model/mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMasks();

  Future<List<Store>> getStores();
}
