import 'package:learn_dart_together/0325/data_source/user_api.dart';
import 'package:learn_dart_together/0325/user.dart';
import 'package:test/test.dart';

void main() {
  UserApi userApi = UserApi();

  test('Json List를 데이터 클래스로 변환', () async {
    List<User> users = await userApi.getUsers();

    expect(users.first.address.geo.lat, -37.3159);
    expect(users.first.address.geo.lng, 81.1496);
    expect(users.first.company.name, 'Romaguera-Crona');
    expect(users.first.company.catchPhrase, 'Multi-layered client-server neural-net');

    expect(users.last.address.geo.lat, -38.2386);
    expect(users.last.address.geo.lng, 57.2232);
    expect(users.last.company.name, 'Hoeger LLC');
    expect(users.last.company.catchPhrase, 'Centralized empowering task-force');
  });
}