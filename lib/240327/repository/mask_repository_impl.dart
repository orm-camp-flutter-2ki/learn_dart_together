import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/store.dart';
import 'package:learn_dart_together/240327/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  // api 주입받아서 사용
  final MaskApi _api;
  // 생성자
  MaskRepositoryImpl(MaskApi? api) : _api = api ?? MaskApi(); // 교체하기 쉬움

  @override
  Future<List<Store>> getStores() async {
    try {
      return await _api.getMaskStores();
    } catch (e) {
      return [];
    }
  }
}

main() async {
  List jsonList = await MaskRepositoryImpl(MaskApi()).getStores();
  print(jsonList);
}
