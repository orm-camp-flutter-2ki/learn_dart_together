import 'package:untitled2/240327/repository/mask_repository.dart';
import '../model/mask.dart';
import '../data_source/mask_api.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _client;

  MaskRepositoryImpl({MaskApi? client})
  : _client = client ?? MaskApi();

  @override
  Future<List<Mask>> getMasks() async {
    List<Mask> masks;
    try {
      masks = await _client.getMasks();
    } catch (e) {
      masks = [];
    }
    return masks;
  }
}