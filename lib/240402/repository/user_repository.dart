import '../model/user.dart';

abstract interface class UserRepository {
  List<User> getUsers();

  void delUser(int val);

  Future<void> saveUser();

  int createUser(User user);

  void delcanUser(int val);

  int getiIdInt();

  User? getUser(int val);

  void changeUser(int val, User user);
}
