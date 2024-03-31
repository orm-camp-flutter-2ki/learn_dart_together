import 'package:learn_dart_together/orm_240327/01_data_repository/mask_repository.dart';
import 'package:learn_dart_together/orm_240327/01_data_source/mask_api.dart';
import 'package:learn_dart_together/orm_240327/mask.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<Mask> getMask() async {
    final masks = await _api.getMasks();
    print(masks);
    return masks;
  }
}

void main() {
  MaskRepositoryImpl(MaskApi()).getMask();
}
