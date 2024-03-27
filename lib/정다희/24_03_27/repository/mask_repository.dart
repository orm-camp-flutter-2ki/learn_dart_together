import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/model/mask.dart';

import '../data_source/mask_api.dart';

abstract interface class MaskRepository {
  Future<List<Mask>> getMasks();
}

class MaskRepositoryImpl implements MaskRepository {
  final maskApi _api;
  MaskRepositoryImpl(this._api);

  @override
  Future<List<Mask>> getMasks() async {
    try {
      return _api.getMasks();
    } catch (e) {
      print('error: $e');
      return [];
    }
  }
}
