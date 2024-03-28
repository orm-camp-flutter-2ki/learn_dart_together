import 'package:learn_dart_together/240328/dto/store_dto.dart';
import 'package:learn_dart_together/240328/mapper/store_mapper.dart';
import 'package:learn_dart_together/240328/model/store.dart';
import '../data_source/mask_api.dart';
import 'maskRepository.dart';

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
