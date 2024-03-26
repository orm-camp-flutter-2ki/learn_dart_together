import 'package:learn_dart_together/24_03_25/users/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';

void main() async {
  List<User> users = await UserApi().getUsers();
  User userIdOne = await UserApi().getUser(1);

  print(users);
  print(userIdOne);
}
