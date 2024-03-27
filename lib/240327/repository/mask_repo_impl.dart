import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/mask.dart';
import 'package:learn_dart_together/240327/repository/mask_repo.dart';

class MaskReposityIpml implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<Mask> getMask() {
    return _api.getMask();
  }
}
