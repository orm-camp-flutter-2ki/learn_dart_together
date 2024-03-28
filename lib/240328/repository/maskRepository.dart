import 'package:learn_dart_together/240328/model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getMasks();
}
