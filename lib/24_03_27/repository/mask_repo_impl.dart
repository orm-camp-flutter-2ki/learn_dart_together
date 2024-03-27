import 'package:learn_dart_together/24_03_27/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  @override
  Future<Mask> getMask() async {
    return await MaskApi().getMask();
  }
}
