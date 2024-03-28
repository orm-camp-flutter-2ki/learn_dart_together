import '../model/mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMasks();
}