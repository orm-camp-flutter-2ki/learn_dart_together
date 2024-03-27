import '../data_source/mask_api.dart';
import '../model/mask_class.dart';

abstract interface class MaskRepository { // MaskRepository 인터페이스 정의
  Future<List<Mask>> getMasks();  // 마스크 정보를 가져오는 비동기 메서드를 선언
}

class MaskRepositoryImpl implements MaskRepository { // MaskRepositoryImpl 클래스 정의
  final MaskApi _client; // MaskApi 인스턴스를 저장할 변수 선언

  // 생성자: MaskApi 인스턴스를 선택적으로 받아와서 _client 변수를 초기화
  MaskRepositoryImpl({MaskApi? client}) : _client = client ?? MaskApi();

  // MaskRepository 인터페이스의 getMasks 메서드를 오버라이드하여 구현
  @override
  Future<List<Store>> getMasks() async {
    List<Store> stores; // 마스크 정보를 저장할 리스트 선언
    try {
      stores = await _client.getMasks(); // MaskApi를 통해 마스크 정보를 가져옴
    } catch (e) {
      stores = []; // 예외가 발생하면 빈 리스트로 초기화
    }
    return stores;
  }
}