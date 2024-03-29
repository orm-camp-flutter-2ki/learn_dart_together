import 'package:learn_dart_together/24_03_28/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/store_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';
import 'package:learn_dart_together/24_03_28/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _client;

  MaskRepositoryImpl({MaskApi? client}) : _client = client ?? MaskApi();

  @override
  Future<List<Store>> getMasks() async {
    List<StoreDto> stores;
    List<Store> storeList = [];
    try {
      stores = await _client.getMasks();
      storeList = stores
          .where(
              (e) => e.createdAt != '' || e.remainStat != '' || e.stockAt != '')
          .map((dto) => dto.toStore())
          .toList();
    } catch (e) {
      stores = [];
    }
    return storeList;
  }
}
