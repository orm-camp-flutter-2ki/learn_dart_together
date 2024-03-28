import 'package:learn_dart_together/0327/model/mask.dart';
import '../model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getMask();
}
