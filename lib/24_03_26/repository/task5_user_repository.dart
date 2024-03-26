import 'package:learn_dart_together/24_03_26/data_source/task5_user_api.dart';
import 'package:learn_dart_together/24_03_26/model_class/task5_user.dart';
import '../interfaces/task5_user_repository_interface.dart';

class UserRepositoryImpl implements UserRepository {
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

Future<void> main() async {
  final userRepository = UserRepositoryImpl();
  final user = await userRepository.getUsers();
  final user2 = await userRepository.getUsersTop10ByUserName();

  print(user);
  print(user2);
}
