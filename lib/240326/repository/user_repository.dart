import '../../240325/practice/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();

  Future<List<User>> getUserTop10ByUserName();
}
