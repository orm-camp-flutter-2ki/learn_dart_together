import 'package:collection/collection.dart';

import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/mask.dart';

abstract interface class MaskRepository {
  Future<List<Mask>> getMasks();
}

class MaskRepositoryImpl implements MaskRepository {
  final _api = MaskApi();

  @override
  Future<List<Mask>> getMasks() => _api.getMasks();
}
