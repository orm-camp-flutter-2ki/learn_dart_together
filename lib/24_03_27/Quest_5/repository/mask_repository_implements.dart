import '../data_suorce/mask_api.dart';
import '../model/mask.dart';
import 'mask_repository.dart';

class MaskRepositoryImplements implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<List<Mask>> getMasks() {
    return _api.getMasks();
  }
}
