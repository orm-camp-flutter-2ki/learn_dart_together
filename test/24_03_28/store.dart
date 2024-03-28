import 'package:learn_dart_together/24_03_28/model/store.dart';
import 'package:test/test.dart';

void main() {
  group('Store 클래스의', () {
    test('copyWith()는 Store을 통해 복사본 Store을 생성한다.', () async {
      // Given
      final origin = Store(
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
      final copied = Store.copyWith(origin: origin, code: '123456');

      // Then
      expect(copied == origin, isFalse);
    });
  });
}
