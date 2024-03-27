import 'package:learn_dart_together/24_03_27/apis/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:mockito/mockito.dart';

class MockMaskApiImpl extends Mock implements MaskApi {
  @override
  Future<Mask> getMask() async =>
      // invocation.getter(#getMask)은 getMask() 메소드가 호출되었을 때의 Mock을 생성합니다.
      // returnValue는 getMask() 메소드가 호출되었을 때 반환할 타입을 설정합니다. When.thenReturn or When.thenAnswer 필수로 사용해야 합니다.
      // returnValueForMissingStub은 테스트코드에서 When.thenReturn or When.thenAnswer를 사용하지 않았을 때 밑의 값이 검증에 사용됩니다.
      super.noSuchMethod(Invocation.getter(#getMask),
          returnValueForMissingStub: Mask(
            count: 1,
            stores: [
              Stores(
                addr: '서울시 중구',
                code: '1111',
                lat: 37.1234,
                lng: 126.1234,
                name: '마스크판매처1',
                remainStat: 'plenty',
                stockAt: '2022-03-27 10:00:00',
                type: '01',
                createdAt: '2022-03-27 10:00:00',
              ),
            ],
          ));
}