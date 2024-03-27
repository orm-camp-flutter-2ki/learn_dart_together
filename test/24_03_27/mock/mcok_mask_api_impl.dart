import 'package:learn_dart_together/24_03_27/apis/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:mockito/mockito.dart';

class MockMaskApiImpl extends Mock implements MaskApi {
  @override
  Future<Mask> getMask() async =>
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