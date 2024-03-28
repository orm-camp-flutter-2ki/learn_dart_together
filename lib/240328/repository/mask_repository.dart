import 'package:learn_dart_together/240328/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/dto/store_dto.dart';
import 'package:learn_dart_together/240328/mapper/store_mapper.dart';
import 'package:learn_dart_together/240328/model/store.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getMaskStores();
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl({MaskApi? api}) : _api = api ?? MaskApi();

  @override
  Future<List<Store>> getMaskStores() async {
    try {
      final storeDtoList = await _api.getMaskStores();
      final storeList = storeDtoList.where((e) => _isContainNull(e) == true).toList();

      return storeList.map((dto) => dto.toStore()).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

  bool _isContainNull(StoreDto storeDto) {
    final json = storeDto.toJson();
    if (json.containsValue(null) || json.containsValue('null') || json.containsValue(0)) return false;
    return true;
  }
}