import 'package:dart_cli_practice/240327/api/mask_api.dart';
import 'package:dart_cli_practice/240327/mapper/mask_mapper.dart';
import 'package:dart_cli_practice/240327/model/mask.dart';
import 'package:dart_cli_practice/240327/model/store.dart';
import 'package:dart_cli_practice/240327/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi _api;

  MaskRepositoryImpl({MaskApi? api}) : _api = api ?? MaskApi();

  @override
  Future<Mask> findMaskInfo() async {
    final maskDto = await _api.getMaskInfo();
    return maskDto.toMask();
  }

  @override
  Future<List<Store>> findAllMaskStore() async {
    final mask = await findMaskInfo();
    return mask.stores;
  }

  @override
  Future<Store> findMaskStoreByName(String name) async {
    final storeList = await findAllMaskStore();
    return storeList.where((e) => e.name == name) as Store;
  }

  @override
  Future<List<Store>> findMaskStoreByRemainStat(String stat) async {
    final storeList = await findAllMaskStore();
    return storeList.where((e) => e.remainStat == stat).toList();
  }
}
