import 'package:learn_dart_together/24_03_26/mask/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_26/mask/model/mask_model.dart';
import 'package:learn_dart_together/24_03_26/mask/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<MaskModel>> getMasks() => _api.getMasks();
}
