import '../model/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();

  Future<User> getUser(int id);
}
