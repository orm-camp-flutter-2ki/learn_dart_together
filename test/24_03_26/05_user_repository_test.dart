import 'package:learn_dart_together/24_03_26/repository/05_user_repository_Impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('과제 5. Repository 작성 연습 getUsers()', () async {
    //given
    final repository = UserRepositoryImpl();
    final userList = await repository.getUsers();

    //when
    final userListLength = userList.length;

    //then
    expect(userListLength == 10, true);
  });

  test('과제 5. Repository 작성 연습 getUsersTop10ByUserName()', () async {
    //given
    final repository = UserRepositoryImpl();
    final userTop10List = await repository.getUsersTop10ByUserName();

    //when
    final firstName = userTop10List[0].name;


    //then
    expect(firstName =='Chelsey Dietrich', true);
  });
}
