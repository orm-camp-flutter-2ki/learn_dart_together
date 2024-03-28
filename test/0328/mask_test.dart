import 'package:learn_dart_together/0328/model/store.dart';
import 'package:learn_dart_together/0328/repository/mask_repository.dart';
import 'package:learn_dart_together/0328/repository/mask_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('마스크 판매점 정보 확인', () async {
    MaskRepository maskRepository = MaskRepositoryImpl();
    List<Store> stores = await maskRepository.getStores();

    expect(stores.length, 216);
    expect(stores.first.addr, '서울특별시 강북구 솔매로 38 (미아동)');
    expect(stores.first.code, '11817488');
    expect(stores.first.createdAt, '2020/07/03 11:00:00');
    expect(stores.first.lat, 37.6254369);
    expect(stores.first.lng, 127.0164096);
    expect(stores.first.name, '승약국');
    expect(stores.first.remainStat, 'plenty');
    expect(stores.first.stockAt, '2020/07/02 18:05:00');
    expect(stores.first.type, '01');
  });
}