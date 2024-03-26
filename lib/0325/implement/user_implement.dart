import 'package:learn_dart_together/0325/model/user_model.dart';
import 'package:learn_dart_together/0325/repository/user_repository.dart';
import 'package:learn_dart_together/0325/source/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _userApi = UserApi();

  @override
  Future<List<User>> getUsers() async {
    return await _userApi.getUsersApi();
  }

  @override
  Future<List<User>> getUser(int id) async {
    return await _userApi.getUserApi(1);
  }

  @override
  Future<List<User>> getUserTop10ByUserName() async {
    return await _userApi.getUserTop10ByUserNameApi();
  }
}

void main() async {
  final UserRepository userRepository = UserRepositoryImpl();
  List<User> user = await userRepository.getUserTop10ByUserName();
  user.forEach((print));
}
