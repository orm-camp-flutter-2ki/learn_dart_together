import '../data_source/user_api.dart';
import '../model/user.dart';
import 'user_repository.dart';

class UserRepositoryImplements implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() {
    return _api.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() {
    return _api.getUsersTop10ByUserName();
  }
}
