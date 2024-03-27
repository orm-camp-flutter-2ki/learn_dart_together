import 'package:learn_dart_together/24_03_27/repository/maskRepository.dart';

import '../data_source/mask_api.dart';
import '../model/mask.dart';

class MaskRepositoryImpl implements MaskRepository {
  final _api =  MaskApi();

  @override
  Future<Mask> getMask() {
    return _api.getMask();
  }
}
