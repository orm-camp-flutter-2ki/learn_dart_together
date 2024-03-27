import 'package:test/test.dart';
import 'package:learn_dart_together/240327/model/mask.dart';
import 'package:learn_dart_together/240327/repository/mask_repository.dart';

void main() {
  test('MaskRepository test for specific store', () async {
    final maskRepository = MaskRepository();

    try {
      final List<Mask> masks = await maskRepository.getMasks();
      expect(masks.isNotEmpty, true); // 마스크 정보가 비어있지 않은지 확인

      final firstMask = masks.first; // 첫 번째 객체 가져오기
      final firstStore = firstMask.stores.first; // 첫 번째 객체의 첫 번째 약국 정보 가져오기

      // 마스크의 count 값이 222인지 확인
      expect(firstMask.count, 222);

      // 특정 약국 정보와 일치하는지 확인
      expect(firstStore.addr, '서울특별시 강북구 솔매로 38 (미아동)');
      expect(firstStore.code, '11817488');
      expect(firstStore.created_at, '2020/07/03 11:00:00');
      expect(firstStore.lat, 37.6254369);
      expect(firstStore.lng, 127.0164096);
      expect(firstStore.name, '승약국');
      expect(firstStore.remain_stat, 'plenty');
      expect(firstStore.stock_at, '2020/07/02 18:05:00');
      expect(firstStore.type, '01');

    } catch (e) {
      fail('에러 발생: $e');
    }
  });
}
