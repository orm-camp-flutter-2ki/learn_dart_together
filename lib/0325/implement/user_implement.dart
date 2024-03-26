import 'package:learn_dart_together/0325/model/user_model.dart';
import 'package:learn_dart_together/0325/repository/user_repository.dart';
import 'package:learn_dart_together/0325/source/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _userApi = UserApi();

  @override
  Future<List<User>> getUsers() async {
    return _userApi.getUsersApi();
  }

  @override
  Future<List<User>> getUser(int id) async {
    return _userApi.getUserApi(1);
  }

  @override
  Future<List<User>> getUserTop10ByUserName() async {
    final userTop10ByUserName = await _userApi.getUserTop10ByUserNameApi();
    return userTop10ByUserName.sublist(0, 11);
  }
}
