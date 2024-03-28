import 'package:learn_dart_together/24_03_28/datasource/mask_api.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/mask_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';

abstract interface class MaskRepository {
  MaskApi api;

  MaskRepository(this.api);

  Future<List<Store>> getStores();
}

class MaskRepositoryImpl implements MaskRepository {
  @override
  MaskApi api;

  MaskRepositoryImpl(this.api);

  @override
  Future<List<Store>> getStores() async {
    List<Store> result = [];
    try {
      MaskDto maskDto = (await api.getMaskDto());
      if (maskDto.stores != null) {
        result = maskDto.stores!
            .where((element) => element.isValid)
            .map((e) => e.toStore())
            .toList();
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
    return result;
  }
}
