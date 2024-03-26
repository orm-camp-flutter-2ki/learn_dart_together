import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/data_source/user_api.dart';
import 'package:learn_dart_together/240326/model/user.dart';
import 'package:learn_dart_together/240326/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api1 = UserApi();
  final UserApi _api2 = UserApi();

  @override
  Future<List<User>> getUsers() {
    return _api1.getUsers();
  }

  //시나리오
  //유저스를 다 가지고오는데 거기서 유저 네임을 기반으로 정렬 후 열명 짤라서 (.sublist) 가지고 온다.
  //이름이 짧은 순 긴순 / 알파벳 정렬이든지 정해야 됨
  //sort로 반환을 해줘야지 반환값에서 더 할 수 없음 sorted는 더 할 수 있음
  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    List<User> topUserName = await _api2.getUsers();
    List<User> finduser = topUserName
        .sorted((user, nextUser) => user.name.compareTo(nextUser.name))
        .sublist(0, 5); //만약에 길이로 비교하고 싶다면 name.length 로 해야 함
    //user.name 과 nextuser.name 을 compare 한다
    return finduser;
  }
}
