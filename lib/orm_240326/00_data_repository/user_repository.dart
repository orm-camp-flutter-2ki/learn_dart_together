import '../model/user.dart';

abstract interface class UsersRepository {
  Future<List<User>> getUsers();

  Future<List<User>> getUsersTop10ByUserName();
}
