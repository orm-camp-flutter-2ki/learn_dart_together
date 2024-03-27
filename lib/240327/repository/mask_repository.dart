import 'package:dart_cli_practice/240327/model/mask.dart';
import 'package:dart_cli_practice/240327/model/store.dart';

abstract interface class MaskRepository {
  Future<Mask> findMaskInfo();

  Future<List<Store>> findAllMaskStore();

  Future<Store> findMaskStoreByName(String name);

  Future<List<Store>> findMaskStoreByRemainStat(String stat);
}
