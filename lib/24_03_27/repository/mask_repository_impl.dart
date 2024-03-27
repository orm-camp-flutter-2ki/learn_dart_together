import 'package:learn_dart_together/24_03_27/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/store.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override
  Future<List<Store>> getStores() async {
    final storeList = await _api.getMaskStores();
    return storeList;
  }
}
