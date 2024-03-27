import 'package:learn_dart_together/orm_240327/01_data_repository/mask_repository.dart';
import 'package:learn_dart_together/orm_240327/01_data_source/mask_api.dart';
import 'package:learn_dart_together/orm_240327/mask.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<List<Mask>> getMask() async {
    final result = await _api.getMasks();
    return result;
  }
}
