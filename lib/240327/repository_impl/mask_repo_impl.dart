import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/store.dart';

import '../repository/mask_respository.dart';

class MaskRepositoryImpl implements MaskRepository {

  final MaskApi _maskApi;

  MaskRepositoryImpl({MaskApi? maskApi}) : _maskApi = maskApi ?? MaskApi();

  @override
  Future<List<Store>> getMaskStores() async {
    try {
      final stores = await _maskApi.getMaskStores();
      return stores;
    } catch(e) {
      return Future.error('GetMaskStores ERROR: $e');
    }
  }

}