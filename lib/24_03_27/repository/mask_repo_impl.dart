import 'package:learn_dart_together/24_03_27/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<Mask> getMask() async {
    return await _api.getMask();
  }
}
