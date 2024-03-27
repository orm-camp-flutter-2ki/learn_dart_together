import 'package:learn_dart_together/240327/model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getStores();
}
