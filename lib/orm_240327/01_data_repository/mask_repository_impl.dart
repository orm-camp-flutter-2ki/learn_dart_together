import 'package:learn_dart_together/orm_240327/01_data_repository/mask_repository.dart';
import 'package:learn_dart_together/orm_240327/01_data_source/mask_api.dart';
import 'package:learn_dart_together/orm_240327/mask.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Mask>> getMask() async {
    try {
      return await _api.getMasks();
    } catch (e) {
      return [];
    }
  }
}
