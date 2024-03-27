import 'package:learn_dart_together/24_03_27/model/mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();
}
