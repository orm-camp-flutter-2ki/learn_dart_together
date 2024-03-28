import 'package:learn_dart_together/0328/model/mask.dart';
import 'package:learn_dart_together/0328/model/store.dart';
import 'package:learn_dart_together/0328/repository/mask_repository.dart';

import '../data_source/mask_api.dart';

class MaskRepositoryImpl implements MaskRepository {

  final MaskApi _maskApi;

  MaskRepositoryImpl({MaskApi? maskApi}) : _maskApi = maskApi ?? MaskApi();

  @override
  Future<List<Store>> getStores() async {
    try {
      Mask mask = await _maskApi.getMask();
      return mask.stores;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}