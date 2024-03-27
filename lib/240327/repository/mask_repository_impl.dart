import 'package:learn_dart_together/240327/data_soource/mask_api.dart';
import 'package:learn_dart_together/240327/repository/mask_repository.dart';

import '../model/mask.dart';

class MaskRepositoryImpl implements MaskRepository {
  final _api = MaskApi();

  @override
  Future<Mask> getMasks() {
    return _api.getMasks();
  }
}
