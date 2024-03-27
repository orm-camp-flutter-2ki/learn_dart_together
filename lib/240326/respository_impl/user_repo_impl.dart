import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:learn_dart_together/240325/data_source/user_api.dart';
import 'package:learn_dart_together/240325/model/user.dart';
import 'package:learn_dart_together/240326/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserApi userApi = UserApi();

  @override
  Future<List<User>> getUsers() async {
    String uri = 'https://jsonplaceholder.typicode.com/users';

    final dataList = await userApi.jsonToList(uri);

    return dataList;
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final getDataList = await userApi.getUsersTop10ByUserName();
    // 탑 10
    final slicedList = getDataList.slice(0, 10).toList();

    return slicedList;
  }
}
