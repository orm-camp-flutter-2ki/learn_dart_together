import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/mapper/mask_mapper.dart';

import '../model/store.dart';
import '../repository/mask_respository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _maskApi;

  MaskRepositoryImpl({MaskApi? maskApi}) : _maskApi = maskApi ?? MaskApi();

  @override
  Future<List<Store>> getMaskStores() async {
    try {
      final storeDtoList = await _maskApi.getMaskStores();
      final stores = storeDtoList
          .where((e) =>
              (e.createdAt != null &&
                  e.remainStat != null &&
                  e.stockAt != null) ||
              (e.createdAt != 'null' &&
                  e.remainStat != 'null' &&
                  e.stockAt != 'null'))
          .map((e) => e.toStore())
          .toList();

      return stores;
    } catch (e) {
      return Future.error('GetMaskStores ERROR: $e');
    }
  }
}
