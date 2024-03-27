import '../model/mask_model.dart';

abstract interface class MaskRepository {
  Future<List<MaskModel>> getMasks();
}