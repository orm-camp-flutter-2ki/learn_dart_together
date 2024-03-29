import 'package:learn_dart_together/240327/mask/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/mask/dto/mask_dto.dart';
import 'package:learn_dart_together/240327/mask/model/store.dart';
import 'package:learn_dart_together/240327/mask/repository/mask_repository.dart';
import '../mapper/mask_mapper.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl(this._api);

  @override
  Future<List<Store>> getNearByStoresTop10() {
    // TODO: implement getNearByStoresTop10
    throw UnimplementedError();
  }

  @override
  Future<List<Store>> getStores() async {
    final MaskDto maskDto = await _api.getMask(); // dto
    if (maskDto.stores == null) {
      return [];
    }

    return maskDto.stores!
        .where((e) => e.remainStat != null && e.stockAt != null)
        .map((e) => e.toStore())
        .toList();
  }
}
