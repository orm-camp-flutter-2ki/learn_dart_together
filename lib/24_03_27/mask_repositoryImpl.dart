import 'package:learn_dart_together/24_03_27/mask_api.dart';

import 'mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _maskApi;

  MaskRepositoryImpl({MaskApi? maskApi}) : _maskApi = maskApi ?? MaskApi();

  @override
  Future<Mask> getMask() {
    return _maskApi.getMask();
  }
}

void main() async {
  MaskRepositoryImpl a = MaskRepositoryImpl();
  final result = await a.getMask();
  print(result);
}
