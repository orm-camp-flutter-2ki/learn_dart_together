import '../../24_03_25/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUserTop10ByUserName();
}