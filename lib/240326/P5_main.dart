import 'package:learn_dart_together/240326/repository/p5_user_repository.dart';

import 'model_class/p5_model_class.dart';

void main() async {
  final userRepository = UserRepositoryImpl();

  final user = await userRepository.getUsers();
  print(user.length);
  // print(user);

  final List<User> usersTop10 = await userRepository.getUsersTop10ByUserName();
  print(usersTop10.length);
  print(usersTop10.map((e) => e.username));
}
