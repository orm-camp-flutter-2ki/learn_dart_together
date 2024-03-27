import 'package:learn_dart_together/240327/model/store.dart';
import '../data_source/mask_api.dart';
import 'maskRepository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _client;

  MaskRepositoryImpl({MaskApi? client}) : _client = client ?? MaskApi();

  @override
  Future<List<Store>> getMasks() async {
    List<Store> stores;
    try {
      stores = await _client.getMasks();
    } catch (e) {
      stores = [];
    }
    return stores;
  }
}
