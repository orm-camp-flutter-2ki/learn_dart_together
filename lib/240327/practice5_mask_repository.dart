import 'package:learn_dart_together/240327/practice5_mask_api.dart';

class MaskRepository {
  final MaskApi _api = MaskApi();

  Future<List<Map<String, dynamic>>> getMaskInfo() {
    return _api.getMaskApi();
  }
}
