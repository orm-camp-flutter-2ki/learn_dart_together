import 'package:learn_dart_together/240328/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/model/mask.dart';
import 'package:learn_dart_together/240328/model/stores.dart';
import 'package:learn_dart_together/240328/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final _api = MaskApi();

  @override
  Future<Mask> getMasks() {
    return _api.getMasks();
  }

  @override
  Future<List<Store>> getStores() async {
    final masks = await _api.getMasks();
    List<Store> stores = masks.stores;
    return stores;
  }
}
