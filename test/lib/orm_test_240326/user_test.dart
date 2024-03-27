import 'package:learn_dart_together/orm_240326/00_data_repository/user_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/user_repository_impl.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('uset test', () {
    test('getUsers', () async {
      final UsersRepository getUser = UsersRepositoryImpl();
      final results = await getUser.getUsers();

      print(results);
    });
    test('UserNameTop10', () async {
      final UsersRepository userTop10 = UsersRepositoryImpl();
      final resultTop = await userTop10.getUsersTop10ByUserName();

      print(resultTop);
    });
  });
}
// 전체적을 expect 함수 사용해서 쓰는 것이 어렵네요
