import 'package:learn_dart_together/24_03_25/users/user.dart';
import 'package:learn_dart_together/24_03_25/users/user_api.dart';

void main() async {
  List<User> users = await UserApi().getUsers();

  print(users);
}