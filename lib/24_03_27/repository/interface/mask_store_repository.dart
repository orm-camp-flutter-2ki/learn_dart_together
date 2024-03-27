import 'package:learn_dart_together/24_03_27/model/mask_store.dart';

abstract interface class MaskStoreRepository {
  Future<MaskStore> getStore();
}