import '../dto/mask_dto.dart';
import '../dto/stores_dto.dart';
import '../model/mask.dart';
import '../model/store.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();

  Future<List<Store>> getStore();
}
