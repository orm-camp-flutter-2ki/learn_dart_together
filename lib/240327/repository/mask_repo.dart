import 'package:learn_dart_together/240327/model/stores.dart';

import '../model/mask.dart';
//창고이다.

abstract interface class MaskRepository {
  Future<Mask> getMask();

  Future<List<Stores>>
      getStore(); //api 가 디티오를 모델로 매핑시켜준걸 레포지토리가 가지고 있고 그 모델을 핸들링 하는것
}
