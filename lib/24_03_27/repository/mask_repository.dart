import 'package:learn_dart_together/24_03_27/model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getStores();
}
