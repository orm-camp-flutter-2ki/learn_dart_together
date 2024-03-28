import 'package:learn_dart_together/24_03_28/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('userList[0]의 값이 예상값과 맞는지 확인', () async {
    List<User> userList = await UserRepositoryImpl(UserApi()).getUsers();

    final expected = User(
      name: 'Leanne Graham',
      email: 'Sincere@april.biz',
      latitude: -37.3159,
      longitude: 81.1496,
    );

    expect(userList[0], expected);
  });
}
