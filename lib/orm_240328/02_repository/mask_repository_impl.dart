import 'package:learn_dart_together/orm_240328/02_dto/stores_dto.dart';
import 'package:learn_dart_together/orm_240328/02_mapper/mask_mapper.dart';
import 'package:learn_dart_together/orm_240328/02_model/stores.dart';
import 'package:learn_dart_together/orm_240328/02_repository/mask_repository.dart';

import '../02_data_sourc/mask_api.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Stores>> getStores() async {
    List<StoreDto> stores;
    List<Stores> storeList = [];
    try {
      stores = await _api.getstores();
      storeList = stores
          .where(
              (e) => e.createdAt != '' || e.remainStat != '' || e.stockAt != '')
          .map((dto) => dto.toStores())
          .toList();
    } catch (e) {
      stores = [];
    }
    return storeList;
  }
}
