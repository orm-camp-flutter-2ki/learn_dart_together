import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:learn_dart_together/24_03_27/store.dart';
import 'package:learn_dart_together/24_03_28/user/model/user.dart';
import 'package:learn_dart_together/http/fake_http_service.dart';
import 'package:learn_dart_together/http/http_service.dart';
import 'package:learn_dart_together/repository/mask_repository_impl.dart';
import 'package:learn_dart_together/repository/user_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final _httpService = HttpService();
  final _fakeHttpService = FakeHttpService();

  group('DTO와 Mapper 테스트', () {
    test('Mask DTO', () async {
      final Mask mask = await MaskRepositoryImpl(_httpService).getMask();

      expect(mask.stores[0].name == '승약국', true);
    });

    test('store return', () async {
      final List<Store> stores = await MaskRepositoryImpl(_httpService).getStores();

      expect(stores[0].name == '승약국', true);
    });

    test('user return', () async {
      final List<User> users = await UserRepositoryImpl(_httpService).getUsers();

      expect(users[0].name == 'Leanne Graham', true);
    });
  });
}
