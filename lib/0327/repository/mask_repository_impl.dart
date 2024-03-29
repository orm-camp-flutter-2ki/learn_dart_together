import 'package:learn_dart_together/0327/mapper/mask_mapper.dart';
import 'package:learn_dart_together/0327/repository/mask_repository.dart';
import 'package:learn_dart_together/0327/source/mask_api.dart';

import '../dto/mask_dto.dart';
import '../dto/stores_dto.dart';
import '../model/mask.dart';
import '../model/store.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  const MaskRepositoryImpl(this._api);

  @override
  Future<Mask> getMask() async {
    return await _api.getMaskApi();
  }

  @override
  Future<List<Store>> getStore() async {
    // 시나리오
    // 스토어에 nullable한 값이 있으면 제외 후 반환한다.
    // 우리는 null 이 없도록 default 값을 주었다
    // 단일 객체는 조건문으로 바로 거르고, list의 경우는 .where 로 nullable 확인 후 toList로 리스트화 한다.
    final getMasks = await getMask();
    return getMasks.stores.where((e) {
      // default 값이 있다면 return false
      // default 값이 없다면 return true
      String unknown = 'unknown';
      double unknownNum = 0.0;
      if (e.addr == unknown ||
          e.code == unknown ||
          e.createdAt == unknown ||
          e.lng == unknownNum ||
          e.lat == unknownNum ||
          e.name == unknown ||
          e.remainStat == unknown ||
          e.stockAt == unknown ||
          e.type == unknown) {
        return false;
      }
      return true;
    }).toList(); // 다시 리스트 화..
  }
}

void main() async {
  final MaskRepository maskStore = MaskRepositoryImpl(MaskApi());
  print(maskStore);

  final test = maskStore.getStore();
}
