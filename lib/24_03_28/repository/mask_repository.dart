import 'package:learn_dart_together/24_03_28/model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getMasks();
}
