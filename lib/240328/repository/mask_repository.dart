import 'package:http/testing.dart';
import 'package:learn_dart_together/240328/mapper/store_mapper.dart';
import 'package:learn_dart_together/240328/model/store.dart';

import '../data_source/mask_api.dart';

class MaskRepository {
  final MaskApi _api;

  MaskRepository(MockClient mockClient) : _api = MaskApi(client: mockClient);

  Future<List<Store>> getStores() async {
    final storeList = await _api.getMaskStores();
    var stores = storeList
        .where(
            (e) => e.createdAt != '' || e.remainStat != '' || e.stockAt != '')
        .map((e) => e.toStore()) // Store 객체를 JSON 변환하여 전달
        .toList();
    return stores;
  }
}
