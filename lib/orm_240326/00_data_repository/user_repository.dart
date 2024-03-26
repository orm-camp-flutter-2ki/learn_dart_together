import 'package:learn_dart_together/orm_240326/user.dart';

abstract interface class UsersRepository {
  Future<List<User>> getUsers();

  Future<List<User>> getUsersTop10ByUserName();
}
