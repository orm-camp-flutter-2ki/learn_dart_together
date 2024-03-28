import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/mask_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';
import 'package:test/test.dart';

void main() {
  group('MaskDtoMapper 확장함수의', () {
    // Store toStore()
    group('toStore()는', () {
      test('StoreDto를 Store로 반환한다.', () {
        // Given
        final maskDto = MaskDto(count: 222, stores: [
          StoreDto(
              addr: '서울특별시 강북구 솔매로 38 (미아동)',
              code: '11817488',
              createdAt: '2020/07/03 11:00:00',
              lat: null,
              lng: 127.0164096,
              name: '승약국',
              remainStat: 'plenty',
              stockAt: null,
              type: '01'),
          StoreDto(
              addr: '서울특별시 강북구 솔매로 38 (미아동)',
              code: '11817488',
              createdAt: '2020/07/03 11:00:00',
              lat: 37.6254369,
              lng: 127.0164096,
              name: '승약국',
              remainStat: 'plenty',
              stockAt: '2020/07/02 18:05:00',
              type: '01'),
          StoreDto(
              addr: '서울특별시 강북구 솔매로 38 (미아동)',
              code: 'null',
              createdAt: '2020/07/03 11:00:00',
              lat: 37.6254369,
              lng: 127.0164096,
              name: '승약국',
              remainStat: 'plenty',
              stockAt: '2020/07/02 18:05:00',
              type: '01')
        ]);
        final expected = Store(
            addr: '서울특별시 강북구 솔매로 38 (미아동)',
            code: '11817488',
            createdAt: '2020/07/03 11:00:00',
            lat: 37.6254369,
            lng: 127.0164096,
            name: '승약국',
            remainStat: 'plenty',
            stockAt: '2020/07/02 18:05:00',
            type: '01');

        // When
        final stores = maskDto.stores
            ?.where((element) => element.isValid)
            .map((e) => e.toStore())
            .toList();

        // Then
        expect(stores?.first == expected, isTrue);
      });

      test('유효하지 않은 StoreDto에 대해 에러를 발생시킨다.', () {
        // Given
        final storeDto = StoreDto(
            addr: '서울특별시 강북구 솔매로 38 (미아동)',
            code: '11817488',
            createdAt: '2020/07/03 11:00:00',
            lat: null,
            lng: 127.0164096,
            name: '승약국',
            remainStat: 'plenty',
            stockAt: null,
            type: '01');

        // When
        masksError() => storeDto.toStore();

        // Then
        expect(masksError, throwsException);
      });
    });
  });
}
