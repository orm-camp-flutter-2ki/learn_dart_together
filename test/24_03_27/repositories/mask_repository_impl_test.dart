import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:learn_dart_together/24_03_27/repositories/mask_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mcok_mask_api_impl.dart';

void main() {
  group('MaskRepositoryImpl 클래스', () {
    final maskApi = MockMaskApiImpl();
    final maskRepository = MaskRepositoryImpl(maskApi: maskApi);
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
        Stores(
          addr: 'unknown',
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
    setUp(() {
      reset(maskApi);
    });
    group('getMask 메소드는', () {
      test('api.getMask를 호출하고 받은 mask 인스턴스를 반환한다.', () async {
        // Given
        when(maskApi.getMask()).thenAnswer((_) async => mask);

        // When
        final result = await maskRepository.getMask();

        // Then
        expect(result, mask);
      });

      test('api.getMask를 1번 호출한다.', () async {
        // Given
        when(maskApi.getMask()).thenAnswer((_) async => mask);

        // When
        await maskRepository.getMask();

        // Then
        verify(maskApi.getMask()).called(1);
      });
    });

    group('getStores 메소드는', () {
      test('getMask를 1번 호출한다.', () async {
        // Given
        when(maskApi.getMask()).thenAnswer((_) async => mask);

        // When
        await maskRepository.getStores();

        // Then
        verify(maskApi.getMask()).called(1);
      });

      test(
          'Stores의 addr, code, lat, lng, name, remainStat, stockAt, type, createdAt이 unknown이 아닌 경우만 반환한다.',
          () async {
        // Given
        final expectStore = [mask.stores[0]];
        final expectLength = 1;
        when(maskApi.getMask()).thenAnswer((_) async => mask);

        // When
        final result = await maskRepository.getStores();

        // Then
        expect(result, expectStore);
        expect(result.length, expectLength);
      });
    });
  });
}
