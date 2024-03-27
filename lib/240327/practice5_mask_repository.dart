import 'package:learn_dart_together/240326/model_class/p5_model_class.dart';
import 'package:learn_dart_together/240327/practice5_mask_api.dart';

class MaskRepository {
  final MaskApi _api = MaskApi();

  Future<List<User>> getTodos() {
    return _api.getMaskApi();
  }
}
