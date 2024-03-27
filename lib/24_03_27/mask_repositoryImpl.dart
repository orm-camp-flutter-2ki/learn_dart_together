import 'package:learn_dart_together/24_03_27/mask_api.dart';

import 'mask.dart';

abstract interface class MaskRepository {
  Future<Mask> getMask();
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<Mask> getMask() {
    return _api.getMask();
  }
}

void main() async {
  MaskRepositoryImpl a = MaskRepositoryImpl();
  final result = await a.getMask();
  print(result);
}
