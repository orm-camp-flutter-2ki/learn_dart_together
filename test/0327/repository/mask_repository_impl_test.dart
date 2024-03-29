import 'package:learn_dart_together/0327/repository/mask_repository.dart';
import 'package:learn_dart_together/0327/repository/mask_repository_impl.dart';
import 'package:learn_dart_together/0327/source/mask_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  group('mask 테스트', () {
    MaskRepository maskRepository = MaskRepositoryImpl(MaskApi());

    test('출력이 잘 되는지 test', () async {
      // final maskStores = await maskRepository.getMask();
      final maskStores = await maskRepository.getStore();
      maskStores.forEach((print));
    });

    test('매장 정보를 제공하는 store 리스트 출력 시, 불완전한 데이터는 제외되는지 test', () async {
      final maskStores = await maskRepository.getStore();

      expect(maskStores.any((element) => element.addr == 'unknown'), false);
      expect(maskStores.any((element) => element.code == 'unknown'), false);
      expect(maskStores.any((element) => element.createdAt == 'unknown'), false);
      expect(maskStores.any((element) => element.lat == 0.0), false);
      expect(maskStores.any((element) => element.lng == 0.0), false);
      expect(maskStores.any((element) => element.name == 'unknown'), false);
      expect(maskStores.any((element) => element.remainStat == 'unknown'), false);
      expect(maskStores.any((element) => element.stockAt == 'unknown'), false);
      expect(maskStores.any((element) => element.type == 'unknown'), false);
    });
  });
}
