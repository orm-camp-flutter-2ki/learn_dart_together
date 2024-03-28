import '../02_model/stores.dart';

abstract interface class MaskRepository {
  Future<List<Stores>> getStores();
}
