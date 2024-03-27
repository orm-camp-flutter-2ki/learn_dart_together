import 'package:learn_dart_together/24_03_27/apis/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/repositories/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final MaskApi maskApi;

  MaskRepositoryImpl({required this.maskApi});

  @override
  Future<Mask> getMask() async {
    return await maskApi.getMask();
  }
}