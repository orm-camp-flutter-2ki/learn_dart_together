import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/mask.dart';
import 'package:learn_dart_together/240327/model/stores.dart';
import 'package:learn_dart_together/240327/repository/mask_repo.dart';

class MaskReposityIpml implements MaskRepository {
  final MaskApi _api = MaskApi();

  @override //오버라이드는 레포지토리 인터페이스에서 미리 만들어놨고 그거를 정의한것을 알려주는 공간 메타 데이터같은것 데이터를 알려주는 데이터
  Future<Mask> getMask() async {
    //빨간줄 뜨는건 퓨처마스크 리턴안해서 뜨는거임
    return await _api.getMask(); //어웨잇으로 하면 퓨쳐가 벗겨지고 마스크만
  }

  @override
  Future<List<Stores>> getStore() async {
    // 다이나믹으있으면 안됨 로 스토어즈에 반환 반환한 것을 확인하도록 함 퓨처리스트 Future<List<Stores>> getStore(); 반환 타입 동일하게 해야함
    final mask =
        await getMask(); //메ㅔ서드는 호출하는것 소괄호안에 파라미터가 합쳐진게 메서드 시그니처이다. 메서드 명이랑 파라미터를 똑같이 쓰면 에러가 남 시그니처는 유일한 것
    return mask.stores.where((e) {
      if (e.addr == 'unknown' ||
          e.code == 'unknown' ||
          e.created_at == 'unknown' ||
          e.lat == 1.0 ||
          e.lng == 1.0 ||
          e.name == 'unknown' ||
          e.remain_stat == 'unknown' ||
          e.stock_at == 'unknown' ||
          e.type == 'unknown') {
        return false;
      }
      return true;
    }).toList(); //필드는 점으로 접근할 수 있음 만약에 _이게 있으면 점으로 해도 안보임
    //호출한애가 마스크를 반환
  }
}

void main() async {
  final MaskReposityIpml result = MaskReposityIpml();
  final storeList = await result.getStore();
  print(storeList);
}
