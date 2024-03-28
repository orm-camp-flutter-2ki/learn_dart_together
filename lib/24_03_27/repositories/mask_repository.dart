import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();

  Future<List<Stores>> getStores();
}
