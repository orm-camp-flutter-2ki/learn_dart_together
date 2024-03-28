import 'package:learn_dart_together/240327/repository/mask_repo.dart';
import 'package:learn_dart_together/240327/repository/mask_repo_impl.dart';
import 'package:test/test.dart';

void main() {
  test('stores가 잘 불러와지고 store의 첫 name 값이 승약국인지 확인', () async {
    final repository =
        MaskReposityIpml(); //repository 변수에 MaskRepository 메서드를 넣는다.
    final stores =
        await repository.getStore(); //스토어스라는 변수에 레포지토리에 겟스토어메서드를 담는다.
    final result = stores.first.name; // 리졸트에 스토어스의 첫 이름을 담는다.
    expect(result, '승약국'); //그이름과 승약국이 맞는지 확인한다.
  });
  test('모든 필드에 known 있는지 확인하는 테스트 있으면 안됨', () async {
    MaskRepository maskRepository = MaskReposityIpml();
    final makeStores = await maskRepository.getStore();
    expect(makeStores.any((e) => e.addr == 'unknown'), false);
    expect(makeStores.any((e) => e.code == 'unknown'), false);
    expect(makeStores.any((e) => e.created_at == 'unknown'), false);
    expect(makeStores.any((e) => e.lng == 1.0), false);
    expect(makeStores.any((e) => e.lat == 1.0), false);
    expect(makeStores.any((e) => e.type == 'unknown'), false);
    expect(makeStores.any((e) => e.stock_at == 'unknown'), false);
    expect(makeStores.any((e) => e.name == 'unknown'), false);
    expect(makeStores.any((e) => e.remain_stat == 'unknown'), false);
  });
}
