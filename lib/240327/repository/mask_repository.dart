import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getMaskStores();
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl({MaskApi? api}) : _api = api ?? MaskApi();

  @override
  Future<List<Store>> getMaskStores() async {
    try {
      return await _api.getMaskStores();
    } catch (e) {
      print(e);
      return [];
    }
  }
}