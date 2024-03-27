import 'package:learn_dart_together/0327/model/mask.dart';

import '../data_source/mask_api.dart';
import 'mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {

  final MaskApi _maskApi;
  
  MaskRepositoryImpl({MaskApi? maskApi}) : _maskApi = maskApi ?? MaskApi();

  @override
  Future<Mask> getMask() async {
    try {
      return await _maskApi.getMask();
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}