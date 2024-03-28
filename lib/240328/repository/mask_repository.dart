import 'package:learn_dart_together/240328/dto/mask_dto.dart';
import 'package:learn_dart_together/240328/model/mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMaskStores();
}
