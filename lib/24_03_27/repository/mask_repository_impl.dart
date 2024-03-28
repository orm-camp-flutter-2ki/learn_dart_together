import 'package:learn_dart_together/24_03_27/model/mask.dart';

import '../data_source/mask_api.dart';

import 'mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<Mask> getMasks() {
    return _api.getMasks();
  }

}