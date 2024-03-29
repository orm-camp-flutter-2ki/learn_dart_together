import 'package:learn_dart_together/24_03_28/mapper/mask_mapper.dart';

import '../data_source/mask_api.dart';
import '../model/store.dart';
import 'mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Store>> getStores() async {
    try {
      final storeDtos = await _api.getStores();

      final List<Store> stores =
          storeDtos.map((dto) => dto.toStore()).cast<Store>().toList();
      return stores;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
