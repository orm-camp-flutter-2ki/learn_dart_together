import 'package:learn_dart_together/240328/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/mapper/mask_mapper.dart';
import 'package:learn_dart_together/240328/model/mask.dart';
import 'package:learn_dart_together/240328/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  // api 주입받아서 사용
  final MaskApi _api;
  // 생성자
  MaskRepositoryImpl(MaskApi? api) : _api = api ?? MaskApi(); // 교체하기 쉬움

  @override
  Future<Mask> getMaskStores() async {
    final mask = await _api.getMaskStores();
    return mask.toMask();
  }
}
