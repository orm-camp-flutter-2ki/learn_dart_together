import 'package:learn_dart_together/24_03_27/model/store.dart';
import 'package:learn_dart_together/24_03_27/repository/maskRepository.dart';

import '../data_source/mask_api.dart';
import '../model/mask.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi api;

  MaskRepositoryImpl(this.api);

  @override
  Future<Mask> getMask() async {
    return await api.getMask();
  }

  @override
  Future<List<Store>> getStores() async {
    final mask = await getMask();
    return mask.stores;
  }
}
