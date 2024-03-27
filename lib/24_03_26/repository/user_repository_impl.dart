import 'package:learn_dart_together/24_03_26/model/user_model/user.dart';
import 'package:learn_dart_together/24_03_26/repository/user_repository.dart';
import 'package:learn_dart_together/24_03_26/data_source/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    return await _api.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    return await _api.getUsersTop10ByUserName();
  }
}
