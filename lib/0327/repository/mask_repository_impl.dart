import 'package:learn_dart_together/0327/model/mask.dart';
import 'package:learn_dart_together/0327/model/store.dart';
import 'package:learn_dart_together/0327/repository/mask_repository.dart';
import 'package:learn_dart_together/0327/source/mask_api.dart';

class MaskRepositoryImpl implements MaskRepository {
  // 테스트용 api를 외부에서 받는다...
  final MaskStoresApi _api;

  const MaskRepositoryImpl(this._api);

  @override
  Future<List<Store>> getMask() async {
    return _api.getMaskStoresApi();
  }
}

void main(){
  final MaskRepository maskStore = MaskRepositoryImpl(MaskStoresApi());

}