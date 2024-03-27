import '../data_source/mask_api.dart';
import '../model/mask.dart';

void main() async {
  Mask maskById = await MaskRepositoryImpl().getMasks();
  print(maskById);
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<Mask> getMasks() async {
    Mask data = await _api.getMasks();
    return data;
  }
}

abstract interface class MaskRepository {
  Future<Mask> getMasks();
}
