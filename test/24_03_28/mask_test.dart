import 'package:learn_dart_together/24_03_28/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_28/model/store.dart';
import 'package:learn_dart_together/24_03_28/repository/mask_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('getStoreList를 호출하면 불완전한 데이터가 있는 요소는 제외되어 나온다.', () async {
    List<Store> storeList = await MaskRepositoryImpl(MaskApi()).getStoreList();

    bool isCompleteAll = true;

    for (final e in storeList) {
      if (e.addr == 'unknown' ||
          e.code == 'unknown' ||
          e.created_at == 'unknown' ||
          e.lat == -1.0 ||
          e.lng == -1.0 ||
          e.name == 'unknown' ||
          e.remain_stat == 'unknown' ||
          e.stock_at == 'unknown' ||
          e.type == 'unknown') {
        isCompleteAll = false;
        break;
      }
    }

    print(storeList);
    expect(isCompleteAll, equals(true));
  });
}
