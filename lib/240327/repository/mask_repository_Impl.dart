import 'package:learn_dart_together/240327/model/mask_api.dart';
import 'package:learn_dart_together/240327/repository/mask_repository.dart';

import '../data_source/store.dart';

class MaskRepository_impl implements MaskRepository {
  final MaskApi _api = MaskApi();

  MaskRepository_impl();

  @override
  Future<List<Store>> getStores() async {
    var storeList = await _api.getMaskStores();
    return storeList;
  }
}
