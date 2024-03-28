import 'package:learn_dart_together/0325/model/user.dart';
import 'package:learn_dart_together/0325/repository/user_repository.dart';
import 'package:learn_dart_together/0325/data_source/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    return await _api.getUsersApi();
    // return await _api.getMaskApi();
  }

  // @override
  // Future<User> getUser(int id) async {
  //   return await _api.getUserApi(1);
  // }

// @override
// Future<List<User>> getUserTop10ByUserName() async {
//   return await _userApi.getUserTop10ByUserNameApi();
}

void main() async {
  final UserRepository userRepository = UserRepositoryImpl();

  final user = await userRepository.getUsers();
  // final user = await userRepository.getUsers();
  // List<User> user = await userRepository.getUser(1);
  // List<User> user = await userRepository.getUserTop10ByUserName();
  print(user);
  // map <string, dynamic>
  // list <map <String, dynamic>>
  // user.forEach((print));

}
