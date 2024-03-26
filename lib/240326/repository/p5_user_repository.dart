import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/data_source/p5_user_api.dart';
import 'package:learn_dart_together/240326/model_class/p5_model_class.dart';
import 'package:learn_dart_together/240326/repository/p5_user_interface.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() {
    return _api.getUsersApi();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    List<User> sortedUsersTop10 = await _api.getUsersApi();
    return sortedUsersTop10
        .sorted((a, b) => a.username.compareTo(b.username))
        .sublist(0, 10)
        .toList();
  }
}
