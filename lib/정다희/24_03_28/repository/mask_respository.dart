import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_28/data_source/mask_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_28/dto/store_dto.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_28/mapper/mask_mapper.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_28/model/mask.dart';

abstract interface class MaskRepository {
  Future<List<Store>> getStores();
}

class MaskRepositoryImpl implements MaskRepository {
  final MaskAPI _api;

  MaskRepositoryImpl(this._api);
  @override
  Future<List<Store>> getStores() async {
    //try cath 로 수정
    final List<StoresDto> res = await _api.getStores();
    return res.map((e) => e.toStore()).toList();
  }
}
