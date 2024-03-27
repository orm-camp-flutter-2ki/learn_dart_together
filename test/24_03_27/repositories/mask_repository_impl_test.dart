import 'package:learn_dart_together/24_03_27/apis/mask_api_impl.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:learn_dart_together/24_03_27/repositories/mask_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'mask_repository_impl_test.mocks.dart';

@GenerateMocks([MaskApiImpl])
void main() {
  group('MaskRepositoryImpl 클래스', () {
    final maskApi = MockMaskApiImpl();
    final maskRepository = MaskRepositoryImpl(maskApi: maskApi);
    group('getMask 메소드는', () {
      test('api.getMask를 호출하고 받은 mask 인스턴스를 반환한다.', () async {
        // Given
        final mask = Mask(
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
        );
        when(maskApi.getMask()).thenAnswer((_) async => mask);

        // When
        final result = await maskRepository.getMask();

        // Then
        expect(result, mask);
      });
    });
  });
}
